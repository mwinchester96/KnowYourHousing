module StaticHelper

  def facebook_login_url
    "https://www.facebook.com/dialog/oauth?client_id=#{Rails.application.secrets.facebook_app_id}&redirect_uri=#{facebook_create_url(provider: 'facebook')}&display=popup&scope=public_profile,email&state=#{form_authenticity_token.to_s}"
  end
end
