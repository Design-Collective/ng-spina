angular.module('dcollective').factory 'Post', ['RailsResource', (RailsResource) ->
  class Project extends RailsResource

    @configure
      url: '/some/endpoint'
      name: 'post'
]