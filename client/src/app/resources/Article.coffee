angular.module('dcollective').factory 'Article', ['RailsResource', (RailsResource) ->
  class Project extends RailsResource

    @configure
      url: '/api/articles'
      name: 'post'
]