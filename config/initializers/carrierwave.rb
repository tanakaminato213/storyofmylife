require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    access_key_id: Rails.application.secrets.access_key_id,
    secret_access_key: Rails.application.secrets.secret_access_key,
    region: 'ap-northeast-1' 
  }

  config.fog_directory  = 'tanakaminato0213'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tanakaminato0213'
end