OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '300117196819314', '331e30b0ee57521b367597c231f6b0f6'
end