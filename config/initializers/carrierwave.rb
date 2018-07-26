CarrierWave.configure do |config|
    config.fog_credential = {
        provider: 'AWS',
        aws_access_key_id: "#{ENV['AWS_KEY']}"
        aws_secret_access_key: "#{ENV['AWS_SECRET']}"
        region: "#{ENV['S3_REGION']}"
        path_style: true
    }

    config.fog_directory = "#{'S3_BUCKET_NAME'}"
    config.cache_dir = "#{Rails.root}/tmp/uploads"