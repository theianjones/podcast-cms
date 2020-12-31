region =            Rails.application.credentials.aws[:region]
access_key_id =     Rails.application.credentials.aws[:access_key_id]
secret_access_key = Rails.application.credentials.aws[:secret_access_key]
Aws.config.update({
  region: region,
  credentials: Aws::Credentials.new(access_key_id, secret_access_key)
})

s3_bucket_name = Rails.application.credentials.aws[:bucket]

S3_BUCKET = Aws::S3::Resource.new.bucket(s3_bucket_name)