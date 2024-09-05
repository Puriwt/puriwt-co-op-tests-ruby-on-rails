class RegistationController < ApplicationController
  def index
    @sending = "Register Form"
  end

  def submit_form
    @name = params[:name]
    @gender = params[:gender]
    @car = params[:car]
    # Handle the form data as needed
    redirect_to root_path, notice: "Form submitted successfully!"
  end
end
