class Link < ActiveRecord::Base
  belongs_to :category
  has_many :annotations, dependent: :destroy
  has_many :users, through: :annotations
end
