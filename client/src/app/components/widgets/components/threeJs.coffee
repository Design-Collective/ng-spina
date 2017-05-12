'use strict'
###*
# @ngdoc directive
# @name dcollective.component:threeJs
# @description
# # loader
###

angular.module('dcollective').component('threeJs',
  templateUrl: 'app/components/widgets/partials/threeJs.html'
  bindings:
    widgetData: '@'
  controller: ->
    @canvasWidth = 400
    @canvasHeight = 400
    @dofillcontainer = true
    @scale = 1
    @materialType = 'torus-knot-geometry'
    @
)
