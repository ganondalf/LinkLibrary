class CreateCollectionsUsers < ActiveRecord::Migration
  def change
    create_table :collections_users, id: false do |t|
      t.integer :collection_id
      t.integer :user_id
    end
  end
end
