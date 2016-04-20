'use strict'
###*
# @ngdoc function
# @name dcollective.controller:showAboutCtrl
# @description
# # showAboutCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'showAboutCtrl', (Page) ->
  @data =  {}
  
  Page.get( id:'about' ).then (data)=>
    @data = data
  
  @