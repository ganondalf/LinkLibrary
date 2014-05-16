class Collection < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :categories

  def self.first_default
    collection = Collection.create(name: "General")
    return collection
  end
end
