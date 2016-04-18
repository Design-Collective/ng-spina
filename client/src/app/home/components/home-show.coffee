'use strict'
###*
# @ngdoc function
# @name dcollective.component:showHome
# @description
# # homeShowCtrl
# Controller of the dcollective
###

angular.module('dcollective').component 'showHome',
  templateUrl: 'app/home/partials/home.html'
  controller: (Page) ->
    @inViewHandler = ($index, $inview, $inviewpart)->
      if $inviewpart == 'top'
        @circleProgress = $index

      if $inviewpart == undefined
        @circleProgress = undefined

    Page.get(1).then (data)=>
      @data = data

    @getBackgroundImage = ()->
      if @data && @data.heroBackgroundImage.content && @data.heroBackgroundImage.content.file
        'background-image': 'url("' + @data.heroBackgroundImage.content.file.url + '")'

    @