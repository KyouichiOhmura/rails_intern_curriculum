require 'test_helper'

class ViewTestsControllerTest < ActionController::TestCase
  setup do
    @view_test = view_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:view_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create view_test" do
    assert_difference('ViewTest.count') do
      post :create, view_test: { text: @view_test.text }
    end

    assert_redirected_to view_test_path(assigns(:view_test))
  end

  test "should show view_test" do
    get :show, id: @view_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @view_test
    assert_response :success
  end

  test "should update view_test" do
    put :update, id: @view_test, view_test: { text: @view_test.text }
    assert_redirected_to view_test_path(assigns(:view_test))
  end

  test "should destroy view_test" do
    assert_difference('ViewTest.count', -1) do
      delete :destroy, id: @view_test
    end

    assert_redirected_to view_tests_path
  end
end
