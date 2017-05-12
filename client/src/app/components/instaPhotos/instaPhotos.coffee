###*
# @ngdoc directive
# @name dcollective.component:instaPhotos
# @description
# # loader
###
angular.module('dcollective').component 'instaPhotos',
  templateUrl: 'app/components/instaPhotos/partials/instaPhotos.html'
  bindings:
    limit: '@'
    title: '@'
  controller: ['InstagramApi', (InstagramApi)->
    @limit = @limit || 10

    #TODO: Use proper id instead of false
    InstagramApi.getUsersRecentMedia().then (res)=>
      @photos = res.data.data
    @
  ]