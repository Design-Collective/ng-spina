json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)
# json.structures @structures, partial: '/api/page_parts/structure', as: :structure

@structures.each do |structure|
  json.set! structure.name do
    json.fields structure.page_partable.structure_items.each do |item|
      # json.item item
      json.array! item.structure_parts.each do |part|
        json.set! part.name do
          json.attributes part
        end
      end
    end
  end
end

@fields.each do |field|
  json.set! field.name do
    json.type field.page_partable_type
    json.content field.page_partable
  end
end
