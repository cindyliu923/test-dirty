Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
    # https://github.com/zquestz/omniauth-google-oauth2#one-time-code-flow-hybrid-authentication
    provider_ignores_state: true
  }
end
OmniAuth.config.allowed_request_methods = %i[get]
