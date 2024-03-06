class SessionsController < ApplicationController
	before_action :authenticate_user!
	def create
    auth = request.env['omniauth.auth']
    if auth.present?
      # Authentication data is present
      # Process the authentication data and create the user session
      user = User.find_or_create_from_auth_hash(auth)
      if user
        session[:user_id] = user.id
        redirect_to root_url, notice: 'Logged in successfully'
      else
        redirect_to root_url, alert: 'Failed to log in. Please try again.'
      end
    else
      # Authentication data is missing
      redirect_to root_url, alert: 'Authentication data is missing. Please try again.'
    end
  end
end