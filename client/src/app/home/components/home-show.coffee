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
  controller: ['Page', (Page) ->
    @inViewHandler = ($index, $inview, $inviewpart)->
      if $inviewpart == 'top'
        @circleProgress = $index

      if $inviewpart == undefined
        @circleProgress = undefined

    Page.get(1).then (data)=>
      @data = data

    @getBackgroundImage = ()->
<<<<<<< 0c44076520e7f20d491ea45aa6bc5daece260e99
      if @data && @data.pageParts.heroBackgroundImage.content && @data.pageParts.heroBackgroundImage.content.file
        'background-image': 'url("' + @data.pageParts.heroBackgroundImage.content.file.url + '")'
=======
      if @data.heroBackgroundImage && @data.heroBackgroundImage.content.file
        'background-image': 'url("' + @data.heroBackgroundImage.content.file.url + '")'
>>>>>>> Updated all injections

    @
  ]