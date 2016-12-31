'use strict'
###*
# @ngdoc function
# @name dcollective.controller:showProcessCtrl
# @description
# # showProcessCtrl
# Controller of the dcollective
###
angular.module('dcollective').component 'showProcess',
  templateUrl: 'app/process/partials/process.html',
  controller: (Page) ->
    @inViewHandler = ($index, $inview, $inviewpart)->
      if $inviewpart == 'top'
        @circleProgress = $index

      if $inviewpart == undefined
        @circleProgress = undefined

    Page.get(4).then (data)=>
      @data = data

    @getBackgroundImage = ()->
      if @data && @data.heroBackgroundImage.content && @data.heroBackgroundImage.content.file
        'background-image': 'url("' + @data.heroBackgroundImage.content.file.url + '")'

    @
