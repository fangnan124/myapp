class NewsesController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /newses
  # GET /newses.json
  def index
    @newses = News.all
  end

  def show_newses
    @newses = News.all
  end

  # GET /newses/1
  # GET /newses/1.json
  def show
  end

  # GET /newses/new
  def new
    @news = News.new
  end

  # GET /newses/1/edit
  def edit
  end

  # POST /newses
  # POST /newses.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'News was successfully created.' }
        format.json { render action: 'show', status: :created, location: @news }
      else
        format.html { render action: 'new' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newses/1
  # PATCH/PUT /newses/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'News was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newses/1
  # DELETE /newses/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to newses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :content, :publisher, :published)
    end
end
