structure.page_partable.structure_items do |item|
  item.structure_parts do |field|
    json.set! field.name do
      json.content json.field_partable
    end
  end
end
