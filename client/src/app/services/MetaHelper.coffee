angular.module('dcollective').factory 'MetaHelper', ['ngMeta',(ngMeta)->
  class MetaHelper
    @meta = {}

    @setMeta = (metaData)->
      @meta = metaData ||
        title: 'DesignCollective',
        titleSuffix: ' | Solutions you want',
        description: 'DesignCollectives home page'
        'og:title': 'Some og title'
        'og:description': 'some og description'
        'og:url': 'some og url'
        'og:image': 'https://s3.amazonaws.com/theshow-production/default/sho_share.png'
      ngMeta.setTitle @meta.title
      ngMeta.setTage 'description', @meta.description
      ngMeta.setTage 'og:title', @meta.ogTitle
      ngMeta.setTage 'og:description', @meta.ogDescription
      ngMeta.setTage 'og:url', @meta.ogUrl
      ngMeta.setTage 'og:image', @meta.ogImage

    @getMeta = ->
      @meta
]