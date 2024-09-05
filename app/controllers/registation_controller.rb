class RegistationController < ApplicationController
  def index
    @sending = "Register Form"
    @users = User.all
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      gender: params[:gender],
      email: params[:email],
      phone: params[:phone],
      subject: params[:subject]
    )
    if @user.save
      redirect_to root_path, notice: "Form submitted successfully!"
    else
      render :new
    end
  end

  def users 
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthdate, :gender, :email, :phone, :subject)
  end
end
