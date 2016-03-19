'use strict'
###*
# @ngdoc function
# @name dcollective.controller:showWorkCtrl
# @description
# # showWorkCtrl
# Controller of the dcollective
###
angular.module('dcollective')
.controller 'showWorkCtrl', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
  $scope
