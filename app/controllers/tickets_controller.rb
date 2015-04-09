class TicketsController < ApplicationController

  # GET /tickets, used when loggedin mechanics need to hunt for all the open tickets
  def index
    @tickets = Ticket.all
    respond_to do |format|
      format.html
      format.json { render json: @tickets }
    end
  end

  # GET /tickets/1
  def show
    @ticket = Ticket.find(params[:id])
    @problems = Problem.find_by(ticket_id: @ticket.id)
    respond_to do |format|
      format.html
      format.json { render json: [@ticket, @ticket.problem, @ticket.mechanic, @ticket.customer, @ticket.bicycle] }
    end
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
      id_faker = Ticket.all.length + 1
      ticket_create_message = Message.create({
        :ticket_id => @ticket.id
        :body => "Your ticket has been created; when a mechanic picks it, you will get another message!",
        :subject => "Your ticket (number #{id_faker} has been successfully created!"
        :recipient_id => current_user.id,
        :sender_id => (User.find_by(:name => "BRUBER_AUTO_MESSAGE")).id
        })
      ticket_create_message.send_sms
      ticket_create_message.send_email
      respond_to do |format|
        format.html
        format.json { render json: [@ticket, @problems], status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @ticket.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /tickets/1
  def update
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
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def ticket_params
      params[:repair_status]
    end
end
