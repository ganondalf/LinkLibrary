class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.boolean :admin, default: false
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
