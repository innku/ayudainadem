CarrierWave.configure do |config|
  if Rails.env.development?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AWS_ACCESS_KEY_ID',
      :aws_secret_access_key  =>  'AWS_SECRET_ACCESS_KEY',
      :region                 => 'us-east-1'
    }
    config.fog_directory  = 'bestmedics'
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'bestmedics'
  end
end
