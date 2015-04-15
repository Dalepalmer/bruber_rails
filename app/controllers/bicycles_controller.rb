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
    @Customer = Customer.find(current_user.id)
    @bicycle = @Customer.bicycles.new(bicycle_params)

    if @bicycle.save
        redirect_to customer_path(current_user)
      # respond_to do |format|
      #   format.html
      #   format.json { render json: @bicycle, status: 201 }
    # else
    #   respond_to do |format|
    #     format.html { render 'new' }
    #     format.json { render json: @bicycle.errors, status: 422 }

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
    @bicycle = Bicycle.find(params[:id])
    @bicycle.destroy
    redirect_to customer_path(current_user)
    # respond_to do |format|
    #   format.json { head :no_content }

  end

  private

    # Only allow a trusted parameter "white list" through.
    def bicycle_params
      params.require(:bicycle).permit(:description, :customer_id, :bicycle_id)
    end
end
