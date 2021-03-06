class Api::V1::UsersController < ApplicationController


  def index
    @users = User.includes(:category_user).all
    render json: @users, :includes => :category_user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    render json: @user
  end

  def login
    @user = User.where("lower(email) = ?", params[:email].downcase).first
    if @user[:password] == params[:password]
      render json: @user
    else
      @user = {error: "oh no an error"}
      render json: {error: "oh no an error"}
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :nationality, :password, :email, :phone)
  end
end
