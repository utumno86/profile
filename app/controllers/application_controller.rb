# it's the application controller, dude
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'You must be signed in to leave a comment'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
  protect_from_forgery :with => exception
end
