'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:loader
# @description
# # loader
###
angular.module('dcollective')
.directive('loader', ->
  template: '<div></div>'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the loader directive'
)
