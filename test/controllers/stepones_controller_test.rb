require 'test_helper'

class SteponesControllerTest < ActionController::TestCase
  setup do
    @stepone = stepones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stepones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stepone" do
    assert_difference('Stepone.count') do
      post :create, stepone: { list: @stepone.list }
    end

    assert_redirected_to stepone_path(assigns(:stepone))
  end

  test "should show stepone" do
    get :show, id: @stepone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stepone
    assert_response :success
  end

  test "should update stepone" do
    patch :update, id: @stepone, stepone: { list: @stepone.list }
    assert_redirected_to stepone_path(assigns(:stepone))
  end

  test "should destroy stepone" do
    assert_difference('Stepone.count', -1) do
      delete :destroy, id: @stepone
    end

    assert_redirected_to stepones_path
  end
end
