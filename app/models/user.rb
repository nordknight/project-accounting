class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  #belongs_to: team
  has_many :tasks
  has_many :posts
  has_many :comments
  validates :first_name, :last_name,  presence: true, length: { minimum: 1, maximum: 200 }
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, length: { minimum: 6 }, :if => :password_changed?
  has_secure_password 


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def password_changed?
    !@password.blank? or password_digest.blank?
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
