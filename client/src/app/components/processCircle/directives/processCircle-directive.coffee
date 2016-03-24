'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:processCircle
# @description
# # processCircle
###
angular.module('dcollective')
.directive('processCircle', ->
  templateUrl: 'app/components/processCircle/partials/processCircle.html'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the processCircle directive'
)
