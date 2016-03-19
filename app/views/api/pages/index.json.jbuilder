json.pages @pages do |page|
  json.extract! page, :id, :name, :title, :menu_title, :slug, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at
  json.blocks page.page_parts do |part|
    json.partial! '/api/page_parts/include', part: part
  end
end
