require 'test_helper'

class CorruptsControllerTest < ActionController::TestCase
  setup do
    @corrupt = corrupts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corrupts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corrupt" do
    assert_difference('Corrupt.count') do
      post :create, corrupt: { description: @corrupt.description, name: @corrupt.name }
    end

    assert_redirected_to corrupt_path(assigns(:corrupt))
  end

  test "should show corrupt" do
    get :show, id: @corrupt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corrupt
    assert_response :success
  end

  test "should update corrupt" do
    put :update, id: @corrupt, corrupt: { description: @corrupt.description, name: @corrupt.name }
    assert_redirected_to corrupt_path(assigns(:corrupt))
  end

  test "should destroy corrupt" do
    assert_difference('Corrupt.count', -1) do
      delete :destroy, id: @corrupt
    end

    assert_redirected_to corrupts_path
  end
end
