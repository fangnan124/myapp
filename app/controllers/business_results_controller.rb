class BusinessResultsController < ApplicationController
  before_action :set_business_result, only: [:show, :edit, :update, :destroy]

  # GET /business_results
  # GET /business_results.json
  def index
    @business_results = BusinessResult.all
  end

  # GET /business_results/1
  # GET /business_results/1.json
  def show
  end

  # GET /business_results/new
  def new
    @business_result = BusinessResult.new
  end

  # GET /business_results/1/edit
  def edit
  end

  # POST /business_results
  # POST /business_results.json
  def create
    @business_result = BusinessResult.new(business_result_params)

    respond_to do |format|
      if @business_result.save
        format.html { redirect_to @business_result, notice: 'Business result was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_result }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_results/1
  # PATCH/PUT /business_results/1.json
  def update
    respond_to do |format|
      if @business_result.update(business_result_params)
        format.html { redirect_to @business_result, notice: 'Business result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_results/1
  # DELETE /business_results/1.json
  def destroy
    @business_result.destroy
    respond_to do |format|
      format.html { redirect_to business_results_url }
      format.json { head :no_content }
    end
  end

  # GET /business_results/manage
  def show_business_results
    @business_results = BusinessResult.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_result
      @business_result = BusinessResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_result_params
      params.require(:business_result).permit(:system_name, :content)
    end
end
