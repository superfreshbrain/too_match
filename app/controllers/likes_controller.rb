class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, post_id: like_params[:post_id])
    @likes = Like.where(post_id: like_params[:post_id]) # for total likes
    @posts = Post.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, post_id: like_params[:post_id])
    like.destroy

    @likes = Like.where(user_id: current_user.id, post_id: like_params[:post_id]) # for total likes
    @posts = Post.all
  end

  private

  def like_params
    params.permit(:post_id)
  end
end
