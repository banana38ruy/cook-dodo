require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipes_index_url
    assert_response :success
  end

  test "should get views" do
    get recipes_views_url
    assert_response :success
  end

end
