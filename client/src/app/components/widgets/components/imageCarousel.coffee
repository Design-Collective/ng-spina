'use strict'
###*
# @ngdoc directive
# @name dcollective.component:imageCarousel
# @description
# # loader
###
angular.module('dcollective').component('imageCarousel', ->
  templateUrl: 'app/components/widgets/partials/imageCarousel.html'
  bindings:
    widgetData: '='
    
)
