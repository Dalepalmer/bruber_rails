class ProblemsController < ApplicationController

  def index
    @problems = Problem.all
    respond_to do |format|
      format.html
      format.json { render json: @problems }
    end
  end

  # GET /problems/1
  def show
    @problem = Problem.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @problem }
    end
  end

  # GET /problems/new
  def new
    @problem = Problem.new
  end

  # GET /problems/1/edit
  def edit
  end

  # POST /problems
  def create
    @problem = Problem.new(problem_params)

    if @problem.save
      respond_to do |format|
        format.html
        format.json { render json: @problem, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @problem.errors, status: 422 }
      end
    end
  end

  # PATCH/PUT /problems/1
  def update
    if @problem.update(problem_params)
      respond_to do |format|
        format.html
        format.json { render json: @problem, status: 201 }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @problem.errors, status: 422 }
      end
    end
  end

  # DELETE /problems/1
  def destroy
    @problem.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def problem_params

    end
end
