class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  #belongs_to: team
  has_many :tasks
  has_many :posts
  has_many :comments
  validates :first_name, :last_name,  presence: true, length: { minimum: 1, maximum: 200 }
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  has_secure_password
end
