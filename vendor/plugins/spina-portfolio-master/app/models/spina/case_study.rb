module Spina
  class CaseStudy < ActiveRecord::Base
    mount_uploader :client_logo, PhotoUploader
    validates :title, :subtitle, :description, presence: true
  end
end
