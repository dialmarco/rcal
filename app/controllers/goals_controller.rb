class GoalsController < ApplicationController
  before_filter :authenticate_user!

  load_and_authorize_resource :goal
  load_and_authorize_resource :user_practice, :through => :goal

  expose(:user_practices) { UserPractice.find_all_by_user_id(current_user.id).map { |up| [up.practice.name, up.id] } }
  expose(:goal_practices) { PracticeEntry.goal_practices(@goal) }
  expose(:actual) { PracticeEntry.actual_goal(@goal) }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @goal.save
      redirect_to(@goal, :notice => 'Goal was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    puts "hihi"
    puts @goal.user_practice
    if @goal.update_attributes(params[:goal])
      redirect_to(@goal, :notice => 'Goal was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @goal.destroy
    redirect_to(goals_url)
  end

end
