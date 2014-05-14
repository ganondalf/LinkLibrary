# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat= Category.create(name: "Welcome Collection");
coll= Collection.create(name: "Basic Information");
link=Link.create(name: "Getting Started!", url: "http://localhost:3000/gettingstarted", )
user=User.create(first_name: "Test", last_name: "Test", email: "test@test.com", password: "abc123", password_confirmation: "abc123")
ann = Annotation.create(body: "Hello")

user.collections << coll
user.annotations << ann
link.annotations << ann
