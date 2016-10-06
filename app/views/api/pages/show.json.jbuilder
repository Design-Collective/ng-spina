json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)



json.structures @structures do |structure|
  
  if structure.try(:content)
    json.set! structure.name do
      json.structure_items structure.try(:content).structure_items do |item|
        json.title item.content(:title)
        json.id    item.id
        json.array! item.structure_parts do | part|
          json.title part.title
          json.data part.try(:content)
        end
      end
    end
  end 

end


# @structure_fields.each do |item|
#   json.set! item.structure.page_part do
#     json.child! do
#       item.structure_parts.each do |part|
#         json.set! part.name do
#           json.(part, :id, :structure_partable_type)
#           json.content part.content
#         end
#       end
#     end
#   end
# end

# @fields.each do |field|
#   json.set! field.name do
#     json.type field.page_partable_type
#     json.id field.page_partable_id
#     json.content field.content
#   end
# end

# Spina::StructureItem.first.structure.page_part


# @structure = @page.page_parts.where(page_partable_type: 'Spina::Structure').second.try(:content).structure_items.first.structure_parts.first.try(:content)
