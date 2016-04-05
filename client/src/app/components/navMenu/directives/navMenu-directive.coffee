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
  controller: ['Menu', (Menu) ->
    @isOpen = false
    @menuItems = null
    @menuClass = 'btl bt-bars'

    Menu.get().then (res)=>
      #console.log res
      if res
        @menuItems = res

    @toggleMenu = ->
      @isOpen = !@isOpen
      if @isOpen
        @menuClass = 'btl bt-times'
      else
        @menuClass = 'btl bt-bars'

    @
  ]
)
