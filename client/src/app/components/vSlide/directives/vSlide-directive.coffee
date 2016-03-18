'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:vSlide
# @description
# # vSlide
###
angular.module('dcollective')
.directive('vSlide', ->
  templateUrl: 'app/components/vSlide/partials/vSlide.html'
  restrict: 'E'
  link: (scope, element, attrs) ->
    element.text 'this is the vSlide directive'
)
