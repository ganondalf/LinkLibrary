class Link < ActiveRecord::Base
  belongs_to :category
  has_many :annotations, dependent: :destroy
  has_many :users, through: :annotations

  def self.first_default
      link = Link.create(title: "Getting Started", url: "https://sleepy-escarpment-8057.herokuapp.com/gettingstarted")
      return link
  end
end
