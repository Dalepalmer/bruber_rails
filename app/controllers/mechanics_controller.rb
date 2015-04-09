class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
    respond_to do |format|
      format.html
      format.json { render json: @mechanics }
    end
  end

  # GET /mechanics/1
  def show
    @mechanic = Mechanic.find(params[:id])
    @tickets = Ticket.find_by(mechanic_id: params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @mechanic }
    end
  end

  # GET /mechanics/new
  def new
    @mechanic = Mechanic.new
  end

  # GET /mechanics/1/edit
  def edit
  end

  # POST /mechanics
  def create
    @mechanic = Mechanic.new(mechanic_params)

    if @mechanic.save
      respond_to do |format|
        format.html
        format.json { render json: @mechanic, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @mechanic.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /mechanics/1
  def update
    if @mechanic.update(mechanic_params)
      respond_to do |format|
        format.html
        format.json { render json: @mechanic, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @mechanic.errors, status: 422 }
      end
    end
  end

  # DELETE /mechanics/1
  def destroy
    @mechanic.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def mechanic_params

    end
end
