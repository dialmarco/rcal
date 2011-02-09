class PagesController < ApplicationController
  before_filter :authenticate_user!

  def home
    if (current_user.user_practice)
      @message = "no practice defined"
    else
      @message = "practice defined"
    end
  end

end
