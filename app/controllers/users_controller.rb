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

  #PATCH users/:id
  def update
    @user = User.find(params[:id])
    @user.update!(user_params)

    render json: @user
  end

  #POST /users
  def create
    @user = User.create(user_params)

    if @user.save
      render json: @user
    else
      puts 'user was not created'
    end
  end

  #DELETE users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render json: @user
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
