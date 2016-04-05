json.menu @pages do |page|
  json.extract! page, :title, :menu_title, :description, :show_in_menu, :slug, :name, :seo_title, :draft, :link_url, :ancestry, :position, :materialized_path, :id
  
  page.page_parts.each do |field|
    json.set! field.name do
      json.type field.page_partable_type
      if field.page_partable
        json.attributes field.page_partable
      end
    end
  end
end
