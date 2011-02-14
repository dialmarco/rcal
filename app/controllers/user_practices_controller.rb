class UserPracticesController < ApplicationController

  before_filter :authenticate_user!

  expose(:default_practice) { DefaultPractice.all }

  def new
  end

  def create
    params.each do |key, value|
      if key =~ /amount$/
        practice = Practice.find_by_acronym(key.split(/_/)[0])
        default_practice = DefaultPractice.find_by_practice_id(practice.id)
        user_practice = UserPractice.new(:amount => value, :practice => practice, :practice_unit => default_practice.practice_unit)
        current_user.user_practices << user_practice 
      end
    end

    redirect_to("/", :notice => 'The practice has been saved.')
  end

  def show
  end

end
