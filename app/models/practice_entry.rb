class PracticeEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_practice

  scope :recent, order("practice_date DESC")
end
