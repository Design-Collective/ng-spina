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
  controller: ['Constants', (Constants) ->
    @isOpen = false
    @menuItems = null
    @menuClass = 'icon-menu'

    Constants.getConstants().then (res)=>
      if res && res.menu
        @menuItems = res.menu

    @toggleMenu = ->
      if @menuClass == 'icon-menu'
        @menuClass = 'icon-close'
      else
        @menuClass = 'icon-menu'
      @isOpen = !@isOpen

    @
  ]
)
