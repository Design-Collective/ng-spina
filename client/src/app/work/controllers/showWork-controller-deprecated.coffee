'use strict'
###*
# TODO: DEPRECATED
# @ngdoc function
# @name dcollective.controller:showWorkCtrl
# @description
# # showWorkCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'showWorkCtrl', (Page) ->
  @data =  {}

  Page.get( id:'about' ).then (data)=>
    @data = data

  @
