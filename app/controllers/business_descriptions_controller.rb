class BusinessDescriptionsController < ApplicationController
  before_action :set_business_description, only: [:show, :edit, :update, :destroy]

  # GET /business_descriptions
  # GET /business_descriptions.json
  def index
    @business_descriptions = BusinessDescription.all
  end

  def show_business_descriptions
    @business_descriptions = BusinessDescription.all
  end

  # GET /business_descriptions/1
  # GET /business_descriptions/1.json
  def show
  end

  # GET /business_descriptions/new
  def new
    @business_description = BusinessDescription.new
  end

  # GET /business_descriptions/1/edit
  def edit
  end

  # POST /business_descriptions
  # POST /business_descriptions.json
  def create
    @business_description = BusinessDescription.new(business_description_params)

    respond_to do |format|
      if @business_description.save
        format.html { redirect_to @business_description, notice: 'Business description was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_description }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_descriptions/1
  # PATCH/PUT /business_descriptions/1.json
  def update
    respond_to do |format|
      if @business_description.update(business_description_params)
        format.html { redirect_to @business_description, notice: 'Business description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_descriptions/1
  # DELETE /business_descriptions/1.json
  def destroy
    @business_description.destroy
    respond_to do |format|
      format.html { redirect_to business_descriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_description
      @business_description = BusinessDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_description_params
      params.require(:business_description).permit(:field, :programming_language, :business)
    end
end
