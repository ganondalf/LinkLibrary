class User < ActiveRecord::Base
  has_and_belongs_to_many :collections
  has_many :annotations, dependent: :destroy
  has_many :links, through: :annotations
  # before_create
  #  # callback -- after .new before .save

  def self.from_omniauth(auth)
      user = User.new
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.bookmark_token = User.bookmark_token
        user.collections << Collection.default_collection
        user.save!
      end
  end

  def self.bookmark_token
    return (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end




end
