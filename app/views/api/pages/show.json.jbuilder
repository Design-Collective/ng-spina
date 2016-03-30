json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)
json.slides @slides, partial: '/api/page_parts/full', as: :structure
