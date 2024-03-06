Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '1048878389513286', '6687d83db7fca4fac482830a850ebb0f'
end