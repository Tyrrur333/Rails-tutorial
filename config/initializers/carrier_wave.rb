if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      #AmazonS3用の設定
      :provider              => 'AWS',
      :region                => 'ap-northeast-1',
      :aws_access_key_id     => 'AKIAIYBZNKGE7JQDFNEQ',
      :aws_secret_access_key => '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'
    }
  end
end