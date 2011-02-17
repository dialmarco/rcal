class StatisticsController < ApplicationController

  expose(:month_practices) { PracticeEntry.current_month }

  def month
  end

end
