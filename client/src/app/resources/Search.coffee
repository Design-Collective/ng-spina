angular.module('dcollective').factory 'Search', ['RailsResource', (RailsResource) ->
  class Search extends RailsResource

    @configure
      url: '/some/endpoint'
      name: 'post'
]