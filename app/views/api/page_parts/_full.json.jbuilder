json.name part.name
json.type part.page_partable_type
json.fields part.page_partable
if part.page_partable_type=="Spina::Structure" && part.page_partable
  if part.page_partable.structure_items
    json.structure part.page_partable.structure_items do |structure|
      json.structure structure
      if structure.structure_parts
        json.fields structure.structure_parts do |field|
          json.field field
          json.field field
        end
      end
    end
  end
end



