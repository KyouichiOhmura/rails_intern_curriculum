require 'test_helper'

class TestBoardsControllerTest < ActionController::TestCase
  setup do
    @test_board = test_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_board" do
    assert_difference('TestBoard.count') do
      post :create, test_board: { comment: @test_board.comment, d_time: @test_board.d_time, id: @test_board.id, title: @test_board.title, user_id: @test_board.user_id }
    end

    assert_redirected_to test_board_path(assigns(:test_board))
  end

  test "should show test_board" do
    get :show, id: @test_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_board
    assert_response :success
  end

  test "should update test_board" do
    put :update, id: @test_board, test_board: { comment: @test_board.comment, d_time: @test_board.d_time, id: @test_board.id, title: @test_board.title, user_id: @test_board.user_id }
    assert_redirected_to test_board_path(assigns(:test_board))
  end

  test "should destroy test_board" do
    assert_difference('TestBoard.count', -1) do
      delete :destroy, id: @test_board
    end

    assert_redirected_to test_boards_path
  end
end
