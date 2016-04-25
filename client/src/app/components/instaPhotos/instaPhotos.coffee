angular.module('dcollective').component 'instaPhotos',
  templateUrl: 'app/components/instaPhotos/partials/instaPhotos.html'
  bindings:
    limit: '@'
    title: '@'
  controller: ['InstagramApi', (InstagramApi)->
    @limit = @limit || 10
    @photos = []

    #TODO: Use proper id instead of false
    InstagramApi.getUsersRecentMedia(false).then (res)=>
      @photos = res.data.data
    @
  ]