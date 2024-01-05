class MainController < ApplicationController

  def index
    if session[:user1_id]
      @user1 = User1.find_by(id: session[:user1_id])
    end
  end

end


# flash.now[:notice] ="Logged in successfully.."
# flash.now[:alert] ="Details not matched !!"
# flash.now[:reminder] ="Logout before leaving.."
