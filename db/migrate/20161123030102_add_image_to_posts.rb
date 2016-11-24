class AddImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image_id, :string
    add_column :posts, :url, :string
    add_column :users, :avatar_id, :string
  end
end
