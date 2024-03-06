class SessionsController < ApplicationController
	before_action :authenticate_user!
	def create
    auth = request.env['omniauth.auth']
    if auth.present?
      user = User.find_or_initialize_by(provider: auth['provider'], uid: auth['uid'])
      user.name = auth['info']['name']
      user.email = auth['info']['email']
      user.save
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in successfully'
    else
      redirect_to root_url, alert: 'Authentication failed. Please try again.'
    end
  end
end