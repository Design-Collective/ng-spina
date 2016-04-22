angular.module('dcollective').factory 'TeamMembers', ['RailsResource', (RailsResource) ->
  class Project extends RailsResource

    @configure
      url: '/api/members'
      name: 'post'
]