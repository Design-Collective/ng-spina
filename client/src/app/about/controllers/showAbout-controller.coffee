'use strict'
###*
# @ngdoc function
# @name dcollective.controller:showAboutCtrl
# @description
# # showAboutCtrl
# Controller of the dcollective
###
angular.module('dcollective')
.controller 'showAboutCtrl', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
  $scope
