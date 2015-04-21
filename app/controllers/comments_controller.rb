class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    # alternate style
    # @comment = @post.comments.create(:body => params[:body])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
    redirect_to @post
    else 
      redirect_to '/'
  end
end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end

