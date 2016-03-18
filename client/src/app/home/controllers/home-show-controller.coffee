'use strict'
###*
# @ngdoc function
# @name dcollective.controller:homeShowCtrl
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective')
.controller 'showHomeCtrl', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
  $scope
