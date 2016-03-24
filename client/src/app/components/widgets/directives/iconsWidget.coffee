'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:iconsWidget
# @description
# # loader
###
angular.module('dcollective').directive('iconsWidget', ->
  templateUrl: 'app/components/widgets/partials/iconsWidget.html'
  restrict: 'E'
  scope:
    iconsData:'='
    
)
