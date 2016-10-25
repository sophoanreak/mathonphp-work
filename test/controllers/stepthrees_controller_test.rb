require 'test_helper'

class StepthreesControllerTest < ActionController::TestCase
  setup do
    @stepthree = stepthrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stepthrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stepthree" do
    assert_difference('Stepthree.count') do
      post :create, stepthree: { code: @stepthree.code, definition: @stepthree.definition, example: @stepthree.example, title: @stepthree.title }
    end

    assert_redirected_to stepthree_path(assigns(:stepthree))
  end

  test "should show stepthree" do
    get :show, id: @stepthree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stepthree
    assert_response :success
  end

  test "should update stepthree" do
    patch :update, id: @stepthree, stepthree: { code: @stepthree.code, definition: @stepthree.definition, example: @stepthree.example, title: @stepthree.title }
    assert_redirected_to stepthree_path(assigns(:stepthree))
  end

  test "should destroy stepthree" do
    assert_difference('Stepthree.count', -1) do
      delete :destroy, id: @stepthree
    end

    assert_redirected_to stepthrees_path
  end
end
