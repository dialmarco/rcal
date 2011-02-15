class PracticeEntriesController < ApplicationController

  expose(:practices) { Practice.all }

  def new
  end

  def create
    practice = Practice.find(params[:practice])
    user_practice = UserPractice.find_by_user_id_and_practice_id(current_user.id, practice.id)
    amount = params[:amount]
    PracticeEntry.create!(:user => current_user, :user_practice => user_practice, :amount => amount)
    redirect_to "/"
  end
end
