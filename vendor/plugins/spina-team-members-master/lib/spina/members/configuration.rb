module Spina
  module Members
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Members'
    self.controller = 'members'
    self.description = 'Manage your team'
    self.spina_icon = 'users-outline'

    self.plugin_type = 'website_resource'
  end
end
