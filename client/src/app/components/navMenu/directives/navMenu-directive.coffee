'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:navMenu
# @description
# # navMenu
###
angular.module('dcollective')
.directive('navMenu', ->
  template: '<div></div>'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the navMenu directive'
)
