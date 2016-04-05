# NOTE: This is a first pass, and uses basic endpoints with copy-pasted class-names. May not be perfect.
# TODO: menu (nav) endpoint, sitemap endpoint etc.

class Api::MenuController < Api::ApiController
  #before_action :set_sitemap, only: [:show, :update, :destroy]

  def index
    @pages = Spina::Page.where(show_in_menu: true).live.sorted
    render :index
  end

end
