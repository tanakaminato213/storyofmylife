require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :file
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1'
  }
    case Rails.env
    when 'production'
        config.fog_directory  = ENV['S3_BUCKET']
        config.fog_directory  = 'tanakaminato0213'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tanakaminato0213'
    end
end