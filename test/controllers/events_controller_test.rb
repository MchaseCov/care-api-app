require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test 'can get events index' do
    get events_path
    assert_response :success
  end
end
