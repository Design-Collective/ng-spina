json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)
# json.structures @structures, partial: '/api/page_parts/structure', as: :structure
json.fields do
  @fields.each do |field|
    json.set! field.name do
      json.type field.page_partable_type
      json.content field.page_partable
    end
  end
end
