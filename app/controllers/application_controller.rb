class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user1_id]
      Current.user1 = User1.find_by(id: session[:user1_id])
    end
  end

  def require_user_logged_in
    redirect_to sing_in_path, alert: "You have to sing in first" if Current.user1.nil?
  end
end
