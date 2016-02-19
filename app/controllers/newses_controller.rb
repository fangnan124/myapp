class NewsesController < ApplicationController
  before_action :set_newse, only: [:show, :edit, :update, :destroy]

  # GET /newses
  # GET /newses.json
  def index
    @newses = Newse.all
  end

  # GET /newses/1
  # GET /newses/1.json
  def show
  end

  # GET /newses/new
  def new
    @newse = Newse.new
  end

  # GET /newses/1/edit
  def edit
  end

  # POST /newses
  # POST /newses.json
  def create
    @newse = Newse.new(newse_params)

    respond_to do |format|
      if @newse.save
        format.html { redirect_to @newse, notice: 'Newse was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newse }
      else
        format.html { render action: 'new' }
        format.json { render json: @newse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newses/1
  # PATCH/PUT /newses/1.json
  def update
    respond_to do |format|
      if @newse.update(newse_params)
        format.html { redirect_to @newse, notice: 'Newse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @newse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newses/1
  # DELETE /newses/1.json
  def destroy
    @newse.destroy
    respond_to do |format|
      format.html { redirect_to newses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newse
      @newse = Newse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newse_params
      params.require(:newse).permit(:title, :content)
    end
end
