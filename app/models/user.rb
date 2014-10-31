class User < ActiveRecord::Base

  enum role: [ :user, :admin ]

  validates :email, uniqueness: true
  validates :fb_uid, uniqueness: true

  # Public: Take the hash omniauth-facebook gives us, and return a user (new or
  # otherwise). For more about how this hash is formatted, see the example in
  # user_test.rb.
  #
  # hash - the Hash being passed in from a successful OmniAuth attempt
  #
  # Returns the user, or false in case of failure
  def self.find_or_create_from_auth_hash(hash)
    user = User.find_or_initialize_by(fb_uid: hash[:uid])
    return user if user.persisted?

    user.first_name   = hash[:info][:first_name]
    user.last_name    = hash[:info][:last_name]
    user.nick         = hash[:info][:nickname]
    user.email        = hash[:info][:email]
    user.fb_image_url = hash[:info][:image]
    user.fb_location  = hash[:info][:location]
    user.oauth_token  = hash[:credentials][:token]
    user.oauth_expires_at = Time.at(hash[:credentials][:expires_at])

    user.save! && user
  end

end
