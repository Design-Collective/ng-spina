'use strict'
###*
# @ngdoc directive
# @name dcollective.component:imageGrid
# @description
# # loader
###
angular.module('dcollective').component('imageGrid', ->
  templateUrl: 'app/components/widgets/partials/imageGrid.html'
  bindings:
    widgetData: '='
)
