class AddInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :photo_url, :string
    add_column :users, :bio, :string
  end
end
