class SessionsController < ApplicationController
  skip_before_action :ensure_logged_in, only: [:new, :facebook_create]

  def new #homepage
    # if logged in, redirect to realtors index
    render :new, layout: 'home'
  end

  def facebook_create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:first_name] = @user.first_name
    session[:user_id] = @user.id
    redirect_to realtors_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
