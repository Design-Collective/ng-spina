'use strict'
###*
# @ngdoc directive
# @name dcollective.component:postsGrid
# @description
# # loader
###
angular.module('dcollective').component('postsGrid', ->
  templateUrl: 'app/components/widgets/partials/postsGrid.html'
  bindings:
    widgetData: '='
  controller: ['Post',(Post)->
    
    Post.get( name: "me" ).then (res)->
      console.log res
    # TODO: Add resource
    @
  ]
)
