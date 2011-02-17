class JavascriptsController < ApplicationController
  before_filter :authenticate_user!

  # expose(:again) { [[3,9],[4,5],[5,9],[6,7]] }
  expose(:again) { PracticeEntry.current_month.collect { |it| [it.practice_date.to_time.to_i, it.amount] } }

  def monthly_practice
  end

end
