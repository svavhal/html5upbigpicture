class SessionController < ApplicationController
  def create
    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    # redirect_to '/'
    render nothing: true
  end
  protected

  def auth_hash
    request.env['omniauth.auth']
    print "------------------#{request.env['omniauth.auth'].to_json}----------------------"
  end

end
