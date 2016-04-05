json.menu @pages do |page|
  json.extract! page, :id, :name, :title, :menu_title, :slug, :show_in_menu, :ancestry
  json.fields page.page_parts do |field|
    json.partial! '/api/page_parts/include', field: field
  end
end
