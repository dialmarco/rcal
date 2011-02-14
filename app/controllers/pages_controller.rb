class PagesController < ApplicationController
  before_filter :authenticate_user!

  def home
    if (current_user.user_practices.size > 0)
      redirect_to(current_user.user_practice)
    else
      redirect_to :controller => 'user_practices', :action => 'new'
    end
  end

end
