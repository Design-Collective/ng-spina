angular.module('dcollective').component 'instaPhotos',
  templateUrl: 'app/components/instaPhotos/partials/instaPhotos.html'
  bindings:
    limit: '@'
    title: '@'
  controller: ['InstagramApi', (InstagramApi)->
    @limit = @limit || 10

    #TODO: Use proper id instead of false
    console.log InstagramApi.getUsersRecentMedia
    InstagramApi.getUsersRecentMedia().then (res)=>
      @photos = res.data.data
    @
  ]