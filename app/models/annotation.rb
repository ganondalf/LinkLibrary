class Annotation < ActiveRecord::Base
    belongs_to :link
    belongs_to :user

    def self.first_default
      annotation = Annotation.create(body: "Click on this link to begin setting up your LinkLibrary collections and begin organizing your saved urls!")
      return annotation
    end
end
