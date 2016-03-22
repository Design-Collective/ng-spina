'use strict'
###*
# @ngdoc function
# @name dcollective.controller:homeShowCtrl
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'showHomeCtrl', () ->
  @data = {
    title: 'Main title'
    subTitle: 'Small sub title'
    text: 'Some long small text for the special container'
    buttonLink: 'http://collective.dev:3619/'
    buttonText: 'This a button'
    widget: 'directiveName'
    smallWidget: 'directiveName'
  }
  @
