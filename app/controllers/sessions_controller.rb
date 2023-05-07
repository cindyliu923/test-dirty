class SessionsController < ApplicationController
  def omniauth
    puts request.env['omniauth.auth']
  end
end
