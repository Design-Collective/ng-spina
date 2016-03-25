'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:loader
# @description
# # loader
###
angular.module('dcollective').directive('buttonLink', ($window)->

  restrict: 'A'
  link: (scope, element, attr)->
    element.bind 'click', ()->
      $window.location.pathname = attr.buttonLink
)