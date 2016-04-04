angular.module('dcollective').factory 'Menu', ['RailsResource', (RailsResource) ->
  class Menu extends RailsResource

    @configure
      url: '/api/menu'
      name: 'menu'
]
