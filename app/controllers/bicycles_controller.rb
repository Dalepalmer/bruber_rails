class BicyclesController < ApplicationController

  def index
    @bicycles = Bicycle.all
    respond_to do |format|
      format.html
      format.json { render json: @bicycles }
    end
  end

  # GET /bicycles/1
  def show
    @bicycle = Bicycle.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @bicycle }
    end
  end

  # GET /bicycles/new
  def new
    @bicycle = Bicycle.new
  end

  # GET /bicycles/1/edit
  def edit
  end

  # POST /bicycles
  def create
    @bicycle = Bicycle.new(bicycle_params)

    if @bicycle.save
      respond_to do |format|
        format.html
        format.json { render json: @bicycle, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @bicycle.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /bicycles/1
  def update
    if @bicycle.update(bicycle_params)
      respond_to do |format|
        format.html
        format.json { render json: @bicycle, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @bicycle.errors, status: 422 }
      end
    end
  end

  # DELETE /bicycles/1
  def destroy
    @bicycle.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def bicycle_params
      
    end
end
