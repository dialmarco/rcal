class UserPracticesController < ApplicationController

  before_filter :authenticate_user!

  expose(:default_practice) { DefaultPractice.all }

  def index
  end

end
