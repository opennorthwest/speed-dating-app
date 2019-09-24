class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, alert: "User created successfully."
    else
      redirect_to new_user_path, alert: "Error creating user."
    end
  end

  def show
  end


end
