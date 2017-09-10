OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, '1749343458697129', 'fa4b6d00bb1db7314fc146be10de0bc8'
  else
    provider :facebook, '262794053844528', '5e4b360387ea0004830b435c87c2a731'
  end
end

if Rails.env.production?
  Koala.configure do |config|
    config.access_token = '1749343458697129' 
    config.app_id = '1749343458697129'
    config.app_secret = 'fa4b6d00bb1db7314fc146be10de0bc8'
  end
else
  Koala.configure do |config|
    config.access_token = '262794053844528'
    config.app_secret = '5e4b360387ea0004830b435c87c2a731'
  end
end
