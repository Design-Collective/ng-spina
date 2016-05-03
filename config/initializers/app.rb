Spina::Page.module_eval do
  #extend FriendlyId
  #friendly_id :name, use: [:slugged, :finders]
end

Spina::PagePart.module_eval do
  scope :subtitle, -> { where(name: 'sub_title') }
  scope :background, -> { where(name: 'hero_background_image') }
end
