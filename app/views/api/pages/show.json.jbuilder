json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)

@slides.each do |item|
  json.set! item.structure.page_part.name do
    json.array! item.structure_parts.each do |part|
      json.set! part.name do
        json.(part, :id, :structure_item_id, :structure_partable_id, :structure_partable_type, :name, :title)
      end
    end
  end
end

@fields.each do |field|
  json.set! field.name do
    json.type field.page_partable_type
    json.id field.page_partable_id
    json.content field.content
  end
end
