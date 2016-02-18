# A controller for showing Blog posts. This is intended to be run by the Admin user
# I.E. Me, so the rest of the CRUD actions are handled by the Admin panel
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
