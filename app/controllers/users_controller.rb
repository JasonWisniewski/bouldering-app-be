class UsersController < ApplicationController
  # has_secure_password
  # validates_presence_of :email
  # validates_uniqueness_of :email

  #GET users
  def index
    @users = User.all

    render json: @users
  end

  #GET users/:id
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  #POST /users
  def create
    @user = User.new(user_params)
    render json: @user
    # if @user.save
    #   render json: @user, status: :created, location: @user
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end
  end

  def update
    # @user = User.new(user_params)
    # render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
