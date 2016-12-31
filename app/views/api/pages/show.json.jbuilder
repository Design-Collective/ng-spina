
json.merge! @page.attributes

# json.(@page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at)

json.structures do
  @structure_page_parts.each do |structure_page_part|
    # TODO - Clean up by moving ordering and parameterization to methods
    if structure_page_part.content
      json.set! structure_page_part.name do
        json.array! structure_page_part.try(:content).structure_items.order(:position) do |item|
          json.merge! item.attributes
          json.title item.content(:title)
          json.parameterized_name item.content(:title).parameterize if item.content(:title).present?
          json.structure_parts do
            item.structure_parts.each do | part|
              json.set! part.name do
                json.merge! part.attributes
                json.content part.try(:content)
              end
            end
          end
        end
      end
    end 
  end
end


json.page_parts do
  @page_parts.each do |part|
    json.set! part.name do
      json.type part.page_partable_type
      json.id part.page_partable_id
      json.content part.content
    end
  end
end

