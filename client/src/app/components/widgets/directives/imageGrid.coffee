'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageGrid
# @description
# # loader
###
angular.module('dcollective').directive('imageGrid', ->
  templateApp: 'app/components/widgets/imageCarousel.html'
  restrict: 'E'
  scope:
    gridData: '='
  controllerAs: 'iGrid'
  bindToController: true
  controller: ->
    @getBackground = (person)->
      'background-image' : 'url("'+ person.imageSrc +'")'
    
    @
    
)
