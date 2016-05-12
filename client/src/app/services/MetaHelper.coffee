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
      ngMeta.setTag 'description', @meta.description
      ngMeta.setTag 'og:title', @meta.ogTitle
      ngMeta.setTag 'og:description', @meta.ogDescription
      ngMeta.setTag 'og:url', @meta.ogUrl
      ngMeta.setTag 'og:image', @meta.ogImage

    @getMeta = ->
      @meta
]