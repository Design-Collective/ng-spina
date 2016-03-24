class Member < ActiveRecord::Base
  has_attached_file :picture, styles: { medium: "600x800>", thumb: "300x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
