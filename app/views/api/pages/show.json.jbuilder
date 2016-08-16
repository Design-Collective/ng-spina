json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description,
             :show_in_menu, :ancestry, :view_template, :created_at, :updated_at,
             :layout_template, :position)

json.next_page do
  json.(@page.next_sibling, :id, :slug, :title)
  json.subtitle @page.page_parts.subtitle.first!
  json.background_image @page.page_parts.background.first!
end if @page.next_sibling

json.og_url @og_url
@structure_fields.each do |item|
  json.set! item.structure.page_part do
    json.child! do
      item.structure_parts.each do |part|
        json.set! part.name do
          json.(part, :id, :structure_partable_type)
          json.animations part.structure_partable.animations if part.name == 'widget_template'
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
