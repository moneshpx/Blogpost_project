class SessionsController < ApplicationController
    def create
      auth = request.env['omniauth.auth']
      # Save auth credentials to your database or session as needed
      redirect_to root_url, notice: 'Logged in successfully'
    end
end