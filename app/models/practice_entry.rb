class PracticeEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_practice

  scope :recent, order("practice_date DESC")

  def self.current_month
    today = Date.today
    first_of_the_month = Date.new(today.year, today.month, 1)
    days_in_month = Date.civil(today.year, today.month, -1).day
    last_of_the_month = Date.new(today.year, today.month, days_in_month)

    practices = where(:practice_date >= first_of_the_month).where(:practice_date <= last_of_the_month)

    as_stats = {}
    practices.each do |pract|
      has_first = true if pract.practice_date == first_of_the_month
      has_last = true if pract.practice_date == last_of_the_month
      as_stats[pract.practice_date.to_time.to_i * 1000] = pract.amount
    end

    (first_of_the_month..last_of_the_month).collect do |day|
      day_as_utc = day.to_time.to_i * 1000
      if (as_stats[day_as_utc])
        [day_as_utc, as_stats[day_as_utc]]
      else
        [day_as_utc, 0]
      end
    end

  end
end
