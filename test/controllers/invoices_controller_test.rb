require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    response :success
  end
end
