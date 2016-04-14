#
# Simple API for Spina Articles
#

class Api::ArticlesController < Api::ApiController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    @articles = Spina::Article.where(draft: false)
    render :index
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    render :show
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Spina::Article.new(article_params)

    if @article.save
      render json: @article, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    if @article.update(article_params)
      head :no_content
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    head :no_content
  end

  private

  def set_article
    @article = Spina::Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title)
  end
end
