'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:navMenu
# @description
# # navMenu
###
angular.module('dcollective')
.directive('navMenu', ->
  templateUrl: 'app/components/navMenu/partials/navMenu.html'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the navMenu directive'
)
