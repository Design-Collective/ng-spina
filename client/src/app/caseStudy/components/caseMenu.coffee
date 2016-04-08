'use strict'
###*
# @ngdoc component
# @name dcollective.component:caseMenu
# @description
#
###
angular.module('dcollective').component('caseMenu',
  templateUrl: 'app/caseStudy/partials/caseMenu.html'
  bindings:
    menu: '='
    menuFixed: '='
  controller:()->
    @getMenuClass = ->
      if @menuFixed 
        'menu-fixed'
      else 
        'menu-hero'
    @
)