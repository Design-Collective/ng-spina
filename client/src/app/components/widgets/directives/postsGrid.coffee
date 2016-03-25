'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:postsGrid
# @description
# # loader
###
angular.module('dcollective').directive('postsGrid', ->
  templateUrl: 'app/components/widgets/partials/postsGrid.html'
  restrict: 'E'
  scope:
    route: '='
  controllerAs: 'postsGrid'
  controller: ['Post',(Post)->
    @posts = []
    Post.get( name: "me" ).then (res)->
      console.log res
    # TODO: Add resource
    @
  ]
)
