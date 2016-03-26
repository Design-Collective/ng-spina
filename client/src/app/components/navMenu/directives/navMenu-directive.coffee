'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:navMenu
# @description
# # navMenu
###
angular.module('dcollective').directive('navMenu', ->
  templateUrl: 'app/components/navMenu/partials/navMenu.html'
  restrict: 'E'
  controllerAs: 'navMenu'
  controller:['Constants',(Constants) ->
    @isOpen = false
    @menuItems = null

    Constants.getConstants().then (res)=>
      @menuItems = res.menu

    @toggleMenu = ->
      @isOpen = !@isOpen
    
    @
  ]
)
