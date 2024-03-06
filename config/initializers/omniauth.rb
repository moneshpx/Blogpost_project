Rails.application.config.middleware.use OmniAuth::Builder do
    provider :instagram, 'YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET'
end