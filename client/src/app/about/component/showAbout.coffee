'use strict'
###*
# @ngdoc function
# @name dcollective.component:showAboutCtrl
# @description
# # showAboutCtrl
# Controller of the dcollective
###
angular.module('dcollective').component 'showAbout',
  templateUrl: 'app/about/partials/about.html',
  controller: (Page) ->
    @inViewHandler = ($index, $inview, $inviewpart)->
      if $inviewpart == 'top'
        @circleProgress = $index

      if $inviewpart == undefined
        @circleProgress = undefined

    Page.get(2).then (data)=>
      @data = data

    @getBackgroundImage = ()->
      console.log @data
      if @data && @data.pageParts.heroBackgroundImage.content && @data.pageParts.heroBackgroundImage.content.file
        'background-image': 'url("' + @data.pageParts.heroBackgroundImage.content.file.url + '")'

    @
