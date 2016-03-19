json.pages @pages do |page|
  json.extract! page, :id, :name, :title, :created_at, :updated_at
  json.blocks page.page_parts do |part|
    json.partial! '/api/page_parts/include', part: part
  end
end
