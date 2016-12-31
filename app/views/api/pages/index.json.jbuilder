json.pages @pages do |page|
  json.extract! page, :id, :name, :title, :menu_title, :slug, :show_in_menu, :ancestry, :view_template, :created_at, :updated_at
  page.page_parts.each do |field|
    json.set! field.name do
      json.type field.page_partable_type
      if field.page_partable
        json.attributes field.page_partable
      end
    end
  end
end
