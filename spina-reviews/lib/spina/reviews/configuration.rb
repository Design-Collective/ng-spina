module Spina
  module Reviews
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Reviews'
    self.controller = 'reviews'
    self.description = 'Manage your reviews here.'
    self.spina_icon = 'pencil-outline'

    self.plugin_type = 'website_resource'
  end
end
