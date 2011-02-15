class PagesController < ApplicationController
  before_filter :authenticate_user!

  expose(:latest_practices) { PracticeEntry.recent.find_all_by_user_id(current_user)}

  def home
    if (current_user.user_practices.size == 0)
      redirect_to :controller => 'user_practices', :action => 'new'
    end
  end

end
