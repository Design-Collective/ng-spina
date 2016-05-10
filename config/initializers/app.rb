Spina::Page.module_eval do
  #extend FriendlyId
  #friendly_id :name, use: [:slugged, :finders]
end

Spina::PagePart.module_eval do
  scope :subtitle, -> { where(name: 'sub_title') }
  scope :background, -> { where(name: 'hero_background_image') }
end

Spina::Article.module_eval do
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end

Spina::Member.module_eval do
  extend FriendlyId
  friendly_id :full_name, use: [:slugged, :finders]
end

Spina::CaseStudy.module_eval do
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
