'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:upNext
# @description
# # upNext
###
angular.module('dcollective').directive('upNext', ->
  templateUrl: 'app/components/upNext/partials/upNext.html'
  restrict: 'E'
  scope:
    nextPage: '='
)
