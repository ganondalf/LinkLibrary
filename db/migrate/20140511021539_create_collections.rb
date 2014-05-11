class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.boolean :private, default: true
      t.timestamps
    end
  end
end
