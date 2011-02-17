class PracticeEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_practice

  scope :recent, order("practice_date DESC")

  def self.current_month
    today = Date.today
    first_of_the_month = Date.new(today.year, today.month, 1)
    where(:practice_date >= first_of_the_month)
  end
end
