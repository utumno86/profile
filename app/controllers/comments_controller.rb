# Although Blog Posts are controlled from the Admin panel, comments on them are controlled
# by the user. However, they need to be signed in and something needs to indicate whetehr or not the
# document has been edited
class CommentsController < ApplicationController
  before_action :authenticate_user!
end
