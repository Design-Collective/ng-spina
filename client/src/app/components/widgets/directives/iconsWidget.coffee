'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:iconsWidget
# @description
# # loader
###
angular.module('dcollective').directive('iconsWidget', ->
  templateApp: 'app/components/widgets/iconsWidget.html'
  restrict: 'E'
  scope:
    iconData:'='
    
)
