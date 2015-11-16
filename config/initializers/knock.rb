Knock.setup do |config|
  config.handle_attr = :email
  config.current_user_from_handle = -> (handle) { User.find_by! Knock.handle_attr => handle }
  config.current_user_from_token = -> (claims) { User.find claims['sub'] }
  config.token_lifetime = 1.day

  config.token_audience = -> { ENV["AUTH0_CLIENT_ID"] }
  config.token_secret_signature_key = -> { JWT.base64url_decode ENV["AUTH0_CLIENT_SECRET"] }
end
