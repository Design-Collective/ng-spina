json.array! structure.structure_parts do |structure_field|
  json.set! structure
  json.type structure_field.structure_partable_type
  json.content structure.structure_parts
end

