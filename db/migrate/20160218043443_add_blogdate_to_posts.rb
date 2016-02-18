class AddBlogdateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :blogdate, :date
  end
end
