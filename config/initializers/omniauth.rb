OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '262794053844528', '5e4b360387ea0004830b435c87c2a731'
end
