'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageWidget
# @description
# # loader
###
angular.module('dcollective').directive('imageWidget', ->
  templateUrl: 'app/components/widgets/partials/imageWidget.html'
  restrict: 'E'
  scope:
    widgetData: '='
)
