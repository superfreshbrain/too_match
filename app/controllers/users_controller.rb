class UsersController < ApplicationController
  def show
    @username = current_user.username
    @posts = current_user.posts.page(params[:page]).per(5).order("created_at DESC")
  end
end
