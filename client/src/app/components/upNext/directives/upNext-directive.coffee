'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:upNext
# @description
# # upNext
###
angular.module('dcollective')
.directive('upNext', ->
  template: '<div></div>'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the upNext directive'
)
