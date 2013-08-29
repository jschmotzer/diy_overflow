class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
  	create! do |user|
  	  user.uid = auth[:uid]
  	  user.name = auth[:info][:name]
  	  user.provider = auth[:provider]
  	end
  end
end