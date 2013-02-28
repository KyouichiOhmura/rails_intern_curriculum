require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TestBoardsController do

  # This should return the minimal set of attributes required to create a valid
  # TestBoard. As you add validations to TestBoard, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "id" => "1", "comment"=>"test_comment", "title"=>"test_title", "user_id"=>"1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestBoardsController. Be sure to keep this updated too.
  def valid_session
    {"id" => "1", "comment"=>"test_comment", "title"=>"test_title", "user_id"=>"1" }
  end

  describe "GET index" do
    it "assigns all test_boards as @test_boards" do
      test_board = TestBoard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:test_boards).should eq([test_board])
    end
  end

  describe "GET show" do
    it "assigns the requested test_board as @test_board" do
      test_board = TestBoard.create! valid_attributes
      get :show, {:id => test_board.to_param}, valid_session
      assigns(:test_board).should eq(test_board)
    end
  end

  describe "GET new" do
    it "assigns a new test_board as @test_board" do
      get :new, {}, valid_session
      assigns(:test_board).should be_a_new(TestBoard)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_board as @test_board" do
      test_board = TestBoard.create! valid_attributes
      get :edit, {:id => test_board.to_param}, valid_session
      assigns(:test_board).should eq(test_board)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TestBoard" do
        expect {
          post :create, {:test_board => valid_attributes}, valid_session
        }.to change(TestBoard, :count).by(1)
      end

      it "assigns a newly created test_board as @test_board" do
        post :create, {:test_board => valid_attributes}, valid_session
        assigns(:test_board).should be_a(TestBoard)
        assigns(:test_board).should be_persisted
      end

      it "redirects to the created test_board" do
        post :create, {:test_board => valid_attributes}, valid_session
        user= User.find_by_user_id(1)
        #ifはテストに書くべきではない
        #すべてのケースを列挙するように書く
        if(user.nil? )
          response.should redirect_to  ("/users/new/1")
        else
          response.should redirect_to  user
        end
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_board as @test_board" do
        # Trigger the behavior that occurs when invalid params are submitted
        TestBoard.any_instance.stub(:save).and_return(false)
        post :create, {:test_board => { "id" => "invalid value" }}, valid_session
        assigns(:test_board).should be_a_new(TestBoard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TestBoard.any_instance.stub(:save).and_return(false)
        post :create, {:test_board => { "id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested test_board" do
        test_board = TestBoard.create! valid_attributes
        # Assuming there are no other test_boards in the database, this
        # specifies that the TestBoard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TestBoard.any_instance.should_receive(:update_attributes).with({ "id" => "1" })
        put :update, {:id => test_board.to_param, :test_board => { "id" => "1" }}, valid_session
      end

      it "assigns the requested test_board as @test_board" do
        test_board = TestBoard.create! valid_attributes
        put :update, {:id => test_board.to_param, :test_board => valid_attributes}, valid_session
        assigns(:test_board).should eq(test_board)
      end

      it "redirects to the test_board" do
        test_board = TestBoard.create! valid_attributes
        put :update, {:id => test_board.to_param, :test_board => valid_attributes}, valid_session
        response.should redirect_to( :controller => 'test_boards' )
      end
    end

    describe "with invalid params" do
      it "assigns the test_board as @test_board" do
        test_board = TestBoard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TestBoard.any_instance.stub(:save).and_return(false)
        put :update, {:id => test_board.to_param, :test_board => { "id" => "invalid value" }}, valid_session
        assigns(:test_board).should eq(test_board)
      end

      it "re-renders the 'edit' template" do
        test_board = TestBoard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TestBoard.any_instance.stub(:save).and_return(false)
        put :update, {:id => test_board.to_param, :test_board => { "id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_board" do
      test_board = TestBoard.create! valid_attributes
      expect {
        delete :destroy, {:id => test_board.to_param}, valid_session
      }.to change(TestBoard, :count).by(-1)
    end

    it "redirects to the test_boards list" do
      test_board = TestBoard.create! valid_attributes
      delete :destroy, {:id => test_board.to_param}, valid_session
      response.should redirect_to(test_boards_url)
    end
  end

end
