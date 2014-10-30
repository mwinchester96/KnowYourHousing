class SessionsController < ApplicationController

  def new #homepage
    # if logged in, redirect to scotches index
    render :new, layout: 'home'
  end

  def facebook_create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = @user.id
    redirect_to scotches_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
