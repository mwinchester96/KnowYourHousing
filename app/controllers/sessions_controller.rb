class SessionsController < ApplicationController

  def new #homepage
    # if logged in, redirect to scotches index
  end

  def facebook_create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    current_user = @user
    redirect_to root_url
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
