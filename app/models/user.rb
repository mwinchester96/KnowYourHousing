class User < ActiveRecord::Base

  validates :email, uniqueness: true
  validates :fb_uid, uniqueness: true

  def self.find_or_create_from_auth_hash(hash)
    user = User.find_or_initialize_by(fb_uid: hash[:uid])
    return user if user.persisted?

    user.first_name   = hash[:info][:first_name]
    user.last_name    = hash[:info][:last_name]
    user.nick         = hash[:info][:nickname]
    user.email        = hash[:info][:email]
    user.fb_image_url = hash[:info][:image]
    user.fb_location  = hash[:info][:location]

    user.save && user
  end

end
