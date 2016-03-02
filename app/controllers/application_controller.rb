# it's the application controller, dude
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # This is what Stack Overflow says to do to redirect in case the user is not signed in.
  # Hope it works!

  protected

  protect_from_forgery with: :exception
end
