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

  def self.goal_practices(goal)
    [[utc(goal.start), goal.start_value],[utc(goal.end), goal.end_value]]
  end

  def self.actual_goal(goal)
    practices = where(:practice_date >= goal.start).where(:practice_date <= goal.end)
    as_stats = [[utc(goal.start), goal.start_value]]
    current_value = goal.start_value
    (goal.start..goal.end).each do |day|
      practice = practices.find { |pr| pr.practice_date == day }
      if practice
        current_value += practice.amount
      end
      as_stats << [utc(day), current_value]
    end
    as_stats
  end

  private

  def self.utc(day)
    day.to_time.to_i * 1000
  end


end
