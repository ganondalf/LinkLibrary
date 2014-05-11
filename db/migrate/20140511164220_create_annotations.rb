class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.text :body
      t.integer :user_id
      t.integer :link_id
      t.timestamps
    end
  end
end
