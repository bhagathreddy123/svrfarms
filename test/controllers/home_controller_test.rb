require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get main_home" do
    get :main_home
    assert_response :success
  end

  test "should get land" do
    get :land
    assert_response :success
  end

  test "should get land1" do
    get :land1
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get image_slide" do
    get :image_slide
    assert_response :success
  end

  test "should get jointventure" do
    get :jointventure
    assert_response :success
  end

  test "should get map_options" do
    get :map_options
    assert_response :success
  end

  test "should get list_property" do
    get :list_property
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
