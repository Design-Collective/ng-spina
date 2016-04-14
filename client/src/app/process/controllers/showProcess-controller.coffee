'use strict'
###*
# @ngdoc function
# @name dcollective.controller:showProcessCtrl
# @description
# # showProcessCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'showProcessCtrl', (Page) ->
  @data =  {}

  Page.get( id:'process' ).then (data)=>
    @data = data

  @