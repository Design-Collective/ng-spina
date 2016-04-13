'use strict'
###*
# @ngdoc function
# @name dcollective.controller:homeShowCtrl
# @description
# # homeShowCtrl
# Controller of the dcollective
###

angular.module('dcollective').controller 'showHomeCtrl', [ 'Page','InstagramApi', (Page,InstagramApi) ->
  @inViewHandler = ($index, $inview, $inviewpart)->
    if $inviewpart == 'top'
      @circleProgress = $index

    if $inviewpart == undefined
      @circleProgress = undefined

#  Page.get(1).then (data)=>
#    @data = data
  InstagramApi.getUsersRecentMedia().then (res)->
    console.log res
    
  @getBackgroundImage = ()->
    if @data && @data.heroBackgroundImage.content && @data.heroBackgroundImage.content.file
      'background-image': 'url("' + @data.heroBackgroundImage.content.file.url + '")'

  @
]
