#
# Spina Pages Controller
#

class Api::PagesController < Api::ApiController
  before_action :set_page, only: [:show, :update, :destroy]

  def index
    @pages = Spina::Page.live.sorted
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    structure_ids = @page.page_parts.where(page_partable_type: 'Spina::Structure')
                   .joins('INNER JOIN spina_structures ON spina_page_parts.page_partable_id = spina_structures.id')
                   .pluck('spina_structures.id')
    @structure_fields = Spina::StructureItem.order(:position).where(structure_id: structure_ids)
    @fields = @page.page_parts.where.not(page_partable_type: 'Spina::Structure')
    @og_url = request.original_url
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
