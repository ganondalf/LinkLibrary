class User < ActiveRecord::Base
  has_and_belongs_to_many :collections
  has_many :annotations
  has_many :links, through: :annotations

  def self.from_omniauth(auth)
      user = User.new
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.save!
      end
  end

end
