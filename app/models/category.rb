class Category < ActiveRecord::Base
  belongs_to :collection
  has_many :links

  def self.first_default
    category = Category.create(name: "Intro to LinkLibrary")
    return category
  end
end
