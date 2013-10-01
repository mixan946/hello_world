class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params[:comment].permit(:commenter, :body)
  end
end
