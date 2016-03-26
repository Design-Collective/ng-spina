json.name part.name
json.type part.page_partable_type
json.attributes part.page_partable
if part.page_partable_type=="Spina::Structure" && part.page_partable
  # Check if structure has structure_items
  if part.page_partable.structure_items
    json.structure part.page_partable.structure_items do |structure|
      json.structure_data structure
      if structure.structure_parts
        json.fields structure.structure_parts do |field|

          json.field_attributes field
          # TODO: How to get only field.structure_partable.content?
          # >> json.field_content field.structure_partable.content
          # json.field_content field.structure_partable
          # NOTE: For debug
          # json.field_key_names field.attribute_names
          if field.structure_partable
            json.field_partable field.structure_partable
          end
          # TODO: Check if field.structure_partable.file exists and insert
          # >> json.file field.structure_partable.file

        end
      end
    end
  end
end



