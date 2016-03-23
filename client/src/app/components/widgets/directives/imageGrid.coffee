'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageGrid
# @description
# # loader
###
angular.module('dcollective').directive('imageGrid', ->
  templateUrl: 'app/components/widgets/partials/imageCarousel.html'
  restrict: 'E'
  scope:
    gridData: '='
  controllerAs: 'iGrid'
  bindToController: true
  controller: ->
    @getBackground = (person)->
      'background-image' : 'url("'+ person.photoSrc +'")'
    
    @
    
)
