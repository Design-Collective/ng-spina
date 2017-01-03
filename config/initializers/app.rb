Spina::Page.module_eval do
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders], routes: :default
end

Spina::PagePart.module_eval do
  scope :subtitle, -> { where(name: 'sub_title') }
  scope :background, -> { where(name: 'hero_background_image') }
end

#Spina::Article.module_eval do
  #extend FriendlyId
  #friendly_id :title, use: [:slugged, :finders], routes: :default
#end

#Spina::Member.module_eval do
  #extend FriendlyId
  #friendly_id :full_name, use: [:slugged, :finders], routes: :default
#end

#Spina::CaseStudy.module_eval do
  #extend FriendlyId
  #friendly_id :title, use: [:slugged, :finders], routes: :default
#end

Spina::Line.module_eval do
  include AttrBitwise
  attr_bitwise :animations, mapping: [:fade_in, :fade_out, :slide_in, :slide_out]
end
