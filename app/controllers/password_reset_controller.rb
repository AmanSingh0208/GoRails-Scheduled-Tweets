class PasswordResetController < ApplicationController

  def new

  end

  def create
    @user1 = User1.find_by(email: params[:email])

    if user1.present?
      PasswordMailer.with(user1: @user1).reset.deliver_later
      redirect_to root_path, notice:"Password reset link sent to your ragistered mail, if you are ragistered with us with this mail."
    else
      redirect_to sing_up_path, notice:"Please ragister with us first."
    end
  end
end
