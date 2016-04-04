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
    @menuClass = 'btl bt-bars'

    Constants.getConstants().then (res)=>
      if res && res.menu
        @menuItems = res.menu

    @toggleMenu = ->
      @isOpen = !@isOpen
      if @isOpen
        @menuClass = 'btl bt-times'
      else
        @menuClass = 'btl bt-bars'

    @
  ]
)
