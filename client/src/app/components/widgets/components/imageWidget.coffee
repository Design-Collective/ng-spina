'use strict'
###*
# @ngdoc directive
# @name dcollective.component:imageWidget
# @description
# # loader
###
angular.module('dcollective').component('imageWidget', ->
  templateUrl: 'app/components/widgets/partials/imageWidget.html'
  bindings:
    widgetData: '='
)
