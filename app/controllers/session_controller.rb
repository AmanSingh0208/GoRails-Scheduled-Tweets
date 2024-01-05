class SessionController < ApplicationController
  def new

  end

  def create
    user1 = User1.find_by(email: params[:email])

    if user1.present? && user1.authenticate(params[:password])
      session[:user1_id] = user1.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end


  end


  def destroy
    session[:user1_id] = nil
    redirect_to root_path, notice: "Logged out successfully"
  end
end
