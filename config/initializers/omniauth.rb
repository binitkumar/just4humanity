OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1749343458697129', 'fa4b6d00bb1db7314fc146be10de0bc8'
end
