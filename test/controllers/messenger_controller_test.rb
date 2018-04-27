require 'test_helper'

class MessengerControllerTest < ActionDispatch::IntegrationTest
  test "should get new_mail" do
    get messenger_new_mail_url
    assert_response :success
  end

end
