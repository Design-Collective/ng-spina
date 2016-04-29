#
# Menu API Controller
#

class Api::MenuController < Api::ApiController
  #before_action :set_sitemap, only: [:show, :update, :destroy]

  def index
    pages = Spina::Page.where(show_in_menu: true).live.sorted
    pages.each do |page|
      @sub_titles = page.page_parts.where(title: 'Sub title')
    end
    render :index
  end

end
