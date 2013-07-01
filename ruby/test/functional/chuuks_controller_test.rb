require 'test_helper'

class ChuuksControllerTest < ActionController::TestCase
  setup do
    @chuuk = chuuks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chuuks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chuuk" do
    assert_difference('Chuuk.count') do
      post :create, chuuk: { picture: @chuuk.picture, region: @chuuk.region, search: @chuuk.search, spelling: @chuuk.spelling }
    end

    assert_redirected_to chuuk_path(assigns(:chuuk))
  end

  test "should show chuuk" do
    get :show, id: @chuuk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chuuk
    assert_response :success
  end

  test "should update chuuk" do
    put :update, id: @chuuk, chuuk: { picture: @chuuk.picture, region: @chuuk.region, search: @chuuk.search, spelling: @chuuk.spelling }
    assert_redirected_to chuuk_path(assigns(:chuuk))
  end

  test "should destroy chuuk" do
    assert_difference('Chuuk.count', -1) do
      delete :destroy, id: @chuuk
    end

    assert_redirected_to chuuks_path
  end
end
