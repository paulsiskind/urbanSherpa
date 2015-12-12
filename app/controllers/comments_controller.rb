class CommentsController < ApplicationController



  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create( comment_params.merge({commenter: current_user.name}) )
    puts @comment.inspect
    redirect_to post_path(@post)
  end

  # def show
  #   @comment = Comment.find(params[:id])
  # end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
    