class TestDataController < ApplicationController
  # GET /test_data
  # GET /test_data.json
  def index
    @test_data = TestDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_data }
    end
  end

  # GET /test_data/1
  # GET /test_data/1.json
  def show
    @test_datum = TestDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_datum }
    end
  end

  # GET /test_data/new
  # GET /test_data/new.json
  def new
    @test_datum = TestDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_datum }
    end
  end

  # GET /test_data/1/edit
  def edit
    @test_datum = TestDatum.find(params[:id])
  end

  # POST /test_data
  # POST /test_data.json
  def create
    @test_datum = TestDatum.new(params[:test_datum])

    respond_to do |format|
      if @test_datum.save
        format.html { redirect_to @test_datum, notice: 'Test datum was successfully created.' }
        format.json { render json: @test_datum, status: :created, location: @test_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @test_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_data/1
  # PUT /test_data/1.json
  def update
    @test_datum = TestDatum.find(params[:id])

    respond_to do |format|
      if @test_datum.update_attributes(params[:test_datum])
        format.html { redirect_to @test_datum, notice: 'Test datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_data/1
  # DELETE /test_data/1.json
  def destroy
    @test_datum = TestDatum.find(params[:id])
    @test_datum.destroy

    respond_to do |format|
      format.html { redirect_to test_data_url }
      format.json { head :no_content }
    end
  end
end
