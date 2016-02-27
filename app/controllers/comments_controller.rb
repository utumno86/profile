# Although Blog Posts are controlled from the Admin panel, comments on them are controlled
# by the user. However, they need to be signed in and something needs to indicate whetehr or not the
# document has been edited
class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    set_post
    @comment = Comment.create(comment_params)
    if @comment.save
      flash[:success] = 'Your comment was successfully added!'
      redirect_to @post
    end
  end

  def update
    set_post
    @comment = Comment.create(comment_params)
    if @comment.update(comment_params)
      flash[:success] = 'Your comment was successfully update!'
      redirect_to @post
    end
  end

  def destroy
    @comment = Comment.find(params[:comment][:id])
    if @comment.destroy
      flash[:notice] = 'Your comment was successfully deleted!'
      redirect_to :back
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:comment][:post_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id, :id)
  end
end
