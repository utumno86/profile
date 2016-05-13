class TweetsController < ApplicationController

  def create
    $twitter.update("I just wrote a new blog post which is available at #{request.referrer}")
    redirect_to :back
  end

end
