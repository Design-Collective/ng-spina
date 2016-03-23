'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:imageCarousel
# @description
# # loader
###
angular.module('dcollective').directive('imageCarousel', ->
  templateUrl: 'app/components/widgets/partials/imageCarousel.html'
  restrict: 'E'
  scope:
    carouselData: '='
  link:(scope, eleme, attr)->
    #carousel init
    
)
