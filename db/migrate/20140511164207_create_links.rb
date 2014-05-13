class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
  end
end
