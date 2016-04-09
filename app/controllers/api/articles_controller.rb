# NOTE: This is a first pass, and uses basic endpoints with copy-pasted class-names. May not be perfect.
# TODO: menu (nav) endpoint, sitemap endpoint etc.

class Api::ArticlesController < Api::ApiController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    @articles = Spina::Article.where(draft: false)
    render :index
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    # structure_ids = @article.article_parts.where(article_partable_type: 'Spina::Structure')
    #                .joins('INNER JOIN spina_structures ON spina_article_parts.article_partable_id = spina_structures.id')
    #                .pluck('spina_structures.id')
    # @structure_fields = Spina::StructureItem.order(:position).where(structure_id: structure_ids)

    # @fields = @article.article_parts.where.not(article_partable_type: 'Spina::Structure')
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
