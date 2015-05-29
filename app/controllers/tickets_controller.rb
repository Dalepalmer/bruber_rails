class TicketsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  # GET /tickets, used when loggedin mechanics need to hunt for all the open tickets
  def index
    @user = current_user
    @tickets = @user.tickets
  end

  # GET /tickets/1
  def show
    @ticket = Ticket.find(params[:id])
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  def create
    @ticket = Ticket.new(ticket_params)
    @problems = Problem.all
    if @ticket.save
      redirect_to ticket_path(@ticket)
      # respond_to do |format|
      #   format.html { render json: [@ticket, @problems], status: 201 }
      #   format.json
      # end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @ticket.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /tickets/1
  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      respond_to do |format|
        format.html
        format.json { render json: @ticket, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @ticket.errors, status: 422 }
      end
    end
  end

  # DELETE /tickets/1
  def destroy
    @ticket.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def ticket_params
      params.require(:ticket).permit(:repair_status, :customer_id, :bicycle_id, :problem_id, :mechanic_id, :location, :location_notes)
    end
end
