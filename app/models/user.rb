class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
      user.gravatar_id = auth["info"]["gravatar_id"]
      user.public_repos = auth["info"]["repos_url"]
    end
  end
end
