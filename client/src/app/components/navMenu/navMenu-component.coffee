'use strict'
###*
# @ngdoc directive
# @name dcollective.component:navMenu
# @description
# # navMenu
###
angular.module('dcollective').component('navMenu',
  templateUrl: 'app/components/navMenu/partials/navMenu.html'
  controller: (Menu, $mdSidenav) ->
    @isOpen = false
    @menuItems = null
    @menuClass = 'btl bt-bars'

    Menu.get().then (res)=>
      if res
        @menuItems = res

    @toggleMenu = ->
      @isOpen = !@isOpen
      if @isOpen
        @menuClass = 'btl bt-times'
      else
        @menuClass = 'btl bt-bars'

    @openMenu = ()->
      $mdSidenav('menu').toggle()
      @toggleMenu()
    @
)
