# frozen_string_literal: true

# This service encapsulates all the aws usage in the app. Providing a central
# spot to upgrade this gem for future updates
class AwsService
  # we need to pre-sign posts so that users dont need to have aws credentials 
  def self.presign_post
    S3_BUCKET.presigned_post(
      key: "uploads/#{SecureRandom.uuid}/${filename}",
      success_action_status: '201',
      acl: 'public-read'
    )
  end
end