class JavascriptsController < ApplicationController
  before_filter :authenticate_user!

  expose(:again) { PracticeEntry.current_month }

  def monthly_practice
  end

  def goal
    @goal = Goal.find(params[:id]) 
  end

end
