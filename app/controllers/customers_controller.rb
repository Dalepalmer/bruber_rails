class CustomersController < ApplicationController

  def index #admin/CSR only?
    @customers = Customer.all
    respond_to do |format|
      format.html
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  def show
    @customer = Customer.find(params[:customer_id])
    @bicycles = @customer.bicycles
    respond_to do |format|
      format.html
      format.json { render json: [@customer, @customer.bicycles, @customer.tickets] }
    end
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  def show
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      respond_to do |format|
        format.html
        format.json { render json: @customer, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @customer.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      respond_to do |format|
        format.html
        format.json { render json: @customer, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @customer.errors, status: 422 }
      end
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def customer_params

    end
end
