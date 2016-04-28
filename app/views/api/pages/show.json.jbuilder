json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description,
             :show_in_menu, :ancestry, :view_template, :created_at, :updated_at,
             :layout_template)

@structure_fields.each do |item|
  json.set! item.structure.page_part do
    json.child! do
      item.structure_parts.each do |part|
        json.set! part.name do
          json.(part, :id, :structure_partable_type)
          json.content part.content
        end
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
