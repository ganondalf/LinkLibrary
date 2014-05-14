# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat= Category.create(name: "General");
coll= Collection.create(name: "Getting Started");
link=Link.create(name: "Learn the Basics", url: "/gettingstarted", )
# link=Link.create(name: "Drag Me to Your Bookmark Bar", url: "/gettingstarted", )
user=User.create(first_name: "Test", last_name: "Test", email: "test@test.com", password: "abc123", password_confirmation: "abc123")
ann = Annotation.create(body: "Click on this link to learn how to customize collections, create subcategories, and more!")


user.collections << coll
user.annotations << ann
link.annotations << ann
