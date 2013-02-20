class TestBoardsController < ApplicationController
	# GET /test_boards
	# GET /test_boards.json
	def index
		@test_boards = TestBoard.all
		
		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @test_boards }
		end
	end
	
	# GET /test_boards/1
	# GET /test_boards/1.json
	def show
		@test_board = TestBoard.find(params[:id])
		
		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @test_board }
		end
	end
	
	# GET /test_boards/new
	# GET /test_boards/new.json
	def new
		@test_board = TestBoard.new
		
		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @test_board }
		end
	end
	
	# GET /test_boards/1/edit
	def edit
		@test_board = TestBoard.find(params[:id])
	end
	
  # POST /test_boards
  # POST /test_boards.json
  def create
    @test_board = TestBoard.new(params[:test_board])
    respond_to do |format|
      if @test_board.save
        @user = User.find_by_user_id(@test_board.user_id)
        if @user 
          format.html { redirect_to @user }
          format.json { render json: @test_board, status: :created, location: @test_board }
        else
          format.html { redirect_to :controller => 'users', :action => 'new', :id => @test_board.user_id }
          format.json { render json: @test_board, status: :created, location: @test_board }
        end
      else
      format.html { render action: "new" } 
      format.json { render json: @test_board.errors, status: :unprocessable_entity }
    end
  end
end
	
	# PUT /test_boards/1
	# PUT /test_boards/1.json
	def update
		@test_board = TestBoard.find(params[:id])
		
		respond_to do |format|
			if @test_board.update_attributes(params[:test_board])
				format.html { redirect_to "/test_boards"  , notice: 'Test board was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @test_board.errors, status: :unprocessable_entity }
			end
		end
	end
	
	# DELETE /test_boards/1
	# DELETE /test_boards/1.json
	def destroy
		@test_board = TestBoard.find(params[:id])
		@test_board.destroy
		
		respond_to do |format|
			format.html { redirect_to test_boards_url }
			format.json { head :no_content }
		end
	end
end
