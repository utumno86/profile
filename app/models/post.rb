# Model for Blog Posts
class Post < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image, ImageUploader
end
