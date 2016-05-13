class TweetsController < ApplicationController

  def create
    $twitter.update("This tweet was generated from a Rails app and I am very excited that it worked")
    redirect_to :back
  end

end
