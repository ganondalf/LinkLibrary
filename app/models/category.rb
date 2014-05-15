class Category < ActiveRecord::Base
  belongs_to :collection
  has_many :links
end
