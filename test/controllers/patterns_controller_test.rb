require 'test_helper'

class PatternsControllerTest < ActionController::TestCase
  setup do
    @pattern = patterns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patterns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pattern" do
    assert_difference('Pattern.count') do
      post :create, pattern: { address: @pattern.address, color_metal: @pattern.color_metal, color_theme: @pattern.color_theme, description: @pattern.description, manufacturer: @pattern.manufacturer, name: @pattern.name, price: @pattern.price, user_id: @pattern.user_id, website: @pattern.website }
    end

    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should show pattern" do
    get :show, id: @pattern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pattern
    assert_response :success
  end

  test "should update pattern" do
    patch :update, id: @pattern, pattern: { address: @pattern.address, color_metal: @pattern.color_metal, color_theme: @pattern.color_theme, description: @pattern.description, manufacturer: @pattern.manufacturer, name: @pattern.name, price: @pattern.price, user_id: @pattern.user_id, website: @pattern.website }
    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should destroy pattern" do
    assert_difference('Pattern.count', -1) do
      delete :destroy, id: @pattern
    end

    assert_redirected_to patterns_path
  end
end
