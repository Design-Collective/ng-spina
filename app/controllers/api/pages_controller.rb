# NOTE: This is a first pass, and uses basic endpoints with copy-pasted class-names. May not be perfect.
# TODO: menu (nav) endpoint, sitemap endpoint etc.

class Api::PagesController < Api::ApiController
  before_action :set_page, only: [:show, :update, :destroy]

  def index
    @pages = Spina::Page.where(draft: false)
    render :index
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    structures_ids = @page.page_parts.where(page_partable_type: 'Spina::Structure')
                   .joins('INNER JOIN spina_structures ON spina_page_parts.page_partable_id = spina_structures.id')
                   .pluck('spina_structures.id')
    @structures = Spina::StructureItem.where(structure_id: structures_ids)

    @fields = @page.page_parts.where.not(page_partable_type: 'Spina::Structure')

    render :show
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Spina::Page.new(page_params)

    if @page.save
      render json: @page, status: :created, location: @page
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    if @page.update(page_params)
      head :no_content
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    head :no_content
  end

  private

  def set_page
    @page = Spina::Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title)
  end
end
