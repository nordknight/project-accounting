class Project < ActiveRecord::Base
  #belongs_to: team
  has_many :tasks
  has_many :posts
  has_many :teams
  validates :name, :summary, presence: true, length: { minimum: 3 }
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_in_the_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end
end
