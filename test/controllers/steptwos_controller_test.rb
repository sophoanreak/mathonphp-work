require 'test_helper'

class SteptwosControllerTest < ActionController::TestCase
  setup do
    @steptwo = steptwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steptwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steptwo" do
    assert_difference('Steptwo.count') do
      post :create, steptwo: { list: @steptwo.list }
    end

    assert_redirected_to steptwo_path(assigns(:steptwo))
  end

  test "should show steptwo" do
    get :show, id: @steptwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steptwo
    assert_response :success
  end

  test "should update steptwo" do
    patch :update, id: @steptwo, steptwo: { list: @steptwo.list }
    assert_redirected_to steptwo_path(assigns(:steptwo))
  end

  test "should destroy steptwo" do
    assert_difference('Steptwo.count', -1) do
      delete :destroy, id: @steptwo
    end

    assert_redirected_to steptwos_path
  end
end
