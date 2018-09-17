if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      #AmazonS3用の設定
      :provider              => 'AWS',
      :region                => 'ap-northeast-1',
      :aws_access_key_id     => 
      :aws_secret_access_key => 
    }
  end
end
