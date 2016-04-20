json.menu @sub_titles do |field|
  json.(field.page_partable, :id, :content)
end
