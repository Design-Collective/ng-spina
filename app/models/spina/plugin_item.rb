class Spina::PluginItem < ActiveRecord::Base
  include AttrBitwise
  attr_bitwise :items, mapping: Spina::Article.pluck(:slug).concat(Spina::Member.pluck(:slug)).concat(Spina::CaseStudy.pluck(:slug)).map!(&:to_sym)

  has_many :page_parts, as: :page_partable
  has_many :layout_parts, as: :layout_partable
  has_many :structure_parts, as: :structure_partable
end
