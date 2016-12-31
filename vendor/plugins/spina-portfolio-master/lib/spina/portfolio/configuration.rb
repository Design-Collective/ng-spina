module Spina
  module Portfolio
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Case Studies'
    self.controller = 'case_studies'
    self.description = 'Manage your portfolio'
    self.spina_icon = 'preview'

    self.plugin_type = 'website_resource'
  end
end
