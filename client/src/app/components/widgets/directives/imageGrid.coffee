'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageGrid
# @description
# # loader
###
angular.module('dcollective').directive('imageGrid', ->
  templateUrl: 'app/components/widgets/partials/imageGrid.html'
  restrict: 'E'
  scope:
    widgetData: '='
  controllerAs: 'iGrid'
  bindToController: true
  controller: ->

    @
    
)
