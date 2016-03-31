'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:postsGrid
# @description
# # loader
###
angular.module('dcollective').directive('latestPosts', ->
  templateUrl: 'app/components/latestPosts/partials/latestPosts.html'
  restrict: 'E'
  scope:
    posts: '=?'
    limit: '@'
    order: '@'
  bindToController: true
  controllerAs: 'lposts'
  controller: ['Post', (Post)->
    @limit = @limit || 4
    @order = @order || 'DESC'
    
    if !@posts
      Post.getDemoPosts().then (res)=>
        @posts = res

    @
  ]
)
