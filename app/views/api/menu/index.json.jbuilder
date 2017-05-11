json.menu @pages do |page|
  json.(page, :slug, :title)
  json.subtitle page.content(:sub_title)
end
