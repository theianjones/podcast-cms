require "test_helper"

class ResourceFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resource_files_new_url
    assert_response :success
  end
end
