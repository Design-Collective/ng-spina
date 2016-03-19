json.page @page, :id, :name, :slug, :title, :menu_title, :seo_title, :description, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at
json.blocks @page.page_parts do |part|
  json.partial! '/api/page_parts/full', part: part
end
