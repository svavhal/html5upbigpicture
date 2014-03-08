class SessionController < ApplicationController
  def create
    auth_hash
    email = request.env['omniauth.auth']['info']['email']
    provider = request.env['omniauth.auth']['provider']
    token = request.env['omniauth.auth']['credentials']['token']
    expires_at = request.env['omniauth.auth']['credentials']['expires_at']
    first_name = request.env['omniauth.auth']['info']['first_name']
    last_name = request.env['omniauth.auth']['info']['last_name']
    user = User.new(email: email, first_name: first_name, last_name: last_name, password: 12345678, password_confirmation: 12345678)
    user.save
    auth = Authentication.new(user_id: user.id, provider: provider, token: token, expires_at: expires_at)
    auth.save
    sign_in :user, user
    redirect_to root_path
  end
  protected

  def auth_hash
    request.env['omniauth.auth']
    print "------------------#{request.env['omniauth.auth'].to_json}----------------------"
  end

end
