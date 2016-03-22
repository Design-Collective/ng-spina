'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageWidget
# @description
# # loader
###
angular.module('dcollective').directive('imageWidget', ->
  templateApp: 'app/components/widgets/imageWidget.html'
  restrict: 'E'
  scope:
    image: '='
)
