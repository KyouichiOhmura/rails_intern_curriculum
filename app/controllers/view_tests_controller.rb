class ViewTestsController < ApplicationController
  # GET /view_tests
  # GET /view_tests.json
  def index
    @view_tests = ViewTest.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @view_tests }
    end
  end

  # GET /view_tests/1
  # GET /view_tests/1.json
  def show
#    @view_test = ViewTest.find(params[:id])
    render :text => "id = #{params[:id]}"
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @view_test }
#    end
  end

  # GET /view_tests/new
  # GET /view_tests/new.json
  def new
    @view_test = ViewTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @view_test }
    end
  end

  # GET /view_tests/1/edit
  def edit
    @view_test = ViewTest.find(params[:id])
  end

  # POST /view_tests
  # POST /view_tests.json
  def create
    @view_test = ViewTest.new(params[:view_test])

    respond_to do |format|
      if @view_test.save
        format.html { redirect_to @view_test, notice: 'View test was successfully created.' }
        format.json { render json: @view_test, status: :created, location: @view_test }
      else
        format.html { render action: "new" }
        format.json { render json: @view_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /view_tests/1
  # PUT /view_tests/1.json
  def update
    @view_test = ViewTest.find(params[:id])

    respond_to do |format|
      if @view_test.update_attributes(params[:view_test])
        format.html { redirect_to @view_test, notice: 'View test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @view_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_tests/1
  # DELETE /view_tests/1.json
  def destroy
    @view_test = ViewTest.find(params[:id])
    @view_test.destroy

    respond_to do |format|
      format.html { redirect_to view_tests_url }
      format.json { head :no_content }
    end
  end
end
