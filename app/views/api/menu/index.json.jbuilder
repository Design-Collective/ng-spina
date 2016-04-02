json.menu @pages do |page|
  json.extract! page, :id, :name, :title, :menu_title, :slug, :show_in_menu, :ancestry
end
