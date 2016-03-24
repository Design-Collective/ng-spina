'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:vSlide
# @description
# # vSlide
###
angular.module('dcollective').directive('vSlide',['$compile',($compile)->
  
  templateUrl: 'app/components/vSlide/partials/vSlide.html'
  restrict: 'E'
  scope:
    slideData: '='
  link: (scope, element, attrs)->

    #Compile defined widget directive and append to view
    if typeof scope.slideData.widget != 'undefined'

      linkFn = $compile scope.slideData.widget
      widget = linkFn scope

      widgetContainer = element.find '.widget-container'
      widgetContainer.append widget

    #Compile defined small widget directive and append to view
    if typeof scope.slideData.smallWidget != 'undefined'

      linkFn = $compile scope.slideData.smallWidget
      smallWidget = linkFn scope

      widgetContainer = element.find '.small-widget-container'
      widgetContainer.append smallWidget
])
