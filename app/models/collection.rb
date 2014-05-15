class Collection < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :categories

  def self.default_collection
    collection = Collection.create(name: "General")
    category = Category.create(name: "Intro to LinkLibrary")
    category.collection = collection
    link = Link.create(title: "Getting Started", url: "https://sleepy-escarpment-8057.herokuapp.com/gettingstarted")
    link.category = category
    annotation = Annotation.create(body: "Click on this link to begin setting up your LinkLibrary collections and begin organizing your saved urls!")
    annotation.link = link

    return collection
  end
end
