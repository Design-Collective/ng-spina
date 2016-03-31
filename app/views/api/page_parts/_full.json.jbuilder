json.title do
  json.type structure.structure_parts[0].structure_partable_type
  json.content structure.structure_parts[0].content
end

json.sub_title do
  json.type structure.structure_parts[1].structure_partable_type
  json.content structure.structure_parts[1].content
end

json.button_link do
  json.type structure.structure_parts[6].structure_partable_type
  json.content structure.structure_parts[6].content
end

json.button_text do
  json.type structure.structure_parts[5].structure_partable_type
  json.content structure.structure_parts[5].content
end

json.background_image do
  json.type structure.structure_parts[3].structure_partable_type
  json.content structure.structure_parts[3].content
end

json.custom_class do
  json.type structure.structure_parts[9].structure_partable_type
  json.content structure.structure_parts[9].content
end

json.widget do
  json.type structure.structure_parts[7].structure_partable_type
  json.content structure.structure_parts[7].content
end

json.external_widget do
  json.type structure.structure_parts[8].structure_partable_type
  json.content structure.structure_parts[8].content
end
