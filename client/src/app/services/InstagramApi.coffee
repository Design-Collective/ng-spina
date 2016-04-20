angular.module('dcollective').factory 'InstagramApi', ['$http','instaAccessToken',($http,instaAccessToken)->
  class InstagramApi
    @base = 'https://api.instagram.com'
    @callback = '&callback=JSON_CALLBACK'

    @getUsersRecentMedia : (userId)->
      userId = userId || '1430684600'
      url = @base + '/v1/users/'+ userId + '/media/recent/?access_token=' + instaAccessToken + @callback
      
      $http.jsonp(url)
]