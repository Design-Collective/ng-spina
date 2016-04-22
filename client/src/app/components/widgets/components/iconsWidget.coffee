'use strict'
###*
# @ngdoc directive
# @name dcollective.component:iconsWidget
# @description
# # loader
###
angular.module('dcollective').component('iconsWidget', ->
  templateUrl: 'app/components/widgets/partials/iconsWidget.html'
  bindings:
    widgetData:'='
)
