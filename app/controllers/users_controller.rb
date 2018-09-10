class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = current_user.username
    @posts = user.posts.page(params[:page]).per(5).order("created_at DESC")
  end
end
