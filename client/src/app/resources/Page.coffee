angular.module('dcollective').factory 'Page', ['RailsResource', (RailsResource) ->
  class Page extends RailsResource

    @configure
      url: '/api/pages'
      name: 'page'
]
