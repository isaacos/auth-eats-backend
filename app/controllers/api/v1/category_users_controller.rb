class Api::V1::CategoryUsersController < ApplicationController

  def create
    @category_user = CategoryUser.create(category_users_params)
    render json: @category_user
  end

  private

  def category_users_params
    params.require(:category_user).permit(:user_id, :category_id)
  end
end
