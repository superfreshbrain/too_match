class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], post_id: comment_params[:post_id], user_id: current_user.id)
    redirect_to "/posts/#{@comment.post.id}" # back to the same post after submitting comment
  end

  private

  def comment_params
    params.permit(:text, :post_id)
  end
end
