class RegistrationController < ApplicationController

  def new
    @user1 = User1.new
  end

  def create
    @user1 = User1.new(user1_params)
      if @user1.save
        session[:user1_id] = @user1.id
        redirect_to root_path, notice: "New account created successfully"
      else
        # flash[:alert] = "Something was wrong"
        render :new
      end

    # render plain: params[:user]
    # render plain: "Thanks"
    # @user = User1.new(user_params)
    # if @user.save
    #   redirect_to root_path, notice: "Successfully created account"
    # else
    #   # flash[:alert] = "Something was wrong"
    #   render :new
    # end
  end

  private

  def user1_params
    params.require(:user1).permit(:email, :password, :password_confirmation)
    # params.require[:user1].permit(:email, :password, :password_confirmation)
  end

end
