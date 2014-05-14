class EditUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    add_column :users, :bookmark_token, :string
  end
end
