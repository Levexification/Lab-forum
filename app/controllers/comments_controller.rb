class CommentsController < ApplicationController
  def create
    @post = PostTable.find(params[:post_table_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_table_path(@post)
  end

  def destroy
    @post = PostTable.find(params[:post_table_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_table_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
