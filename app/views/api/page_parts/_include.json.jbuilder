json.name part.name
json.type part.page_partable_type
if part.page_partable
  include_attributes = part.page_partable.attribute_names
  if include_attributes
    json.fields include_attributes
  end
end
