'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:vSlide
# @description
# # vSlide
###
angular.module('dcollective').directive('vSlide',['$compile','$templateCache',($compile,$templateCache)->

  templateUrl: 'app/components/vSlide/partials/vSlide.html'
  restrict: 'E'
  scope:
    slideData: '&'
  controllerAs: 'vslide'
  bindToController: true
  link: (scope, element, attrs)->

    #Compile defined widget directive and append to view
    if typeof scope.vslide.slideData.widget != 'undefined'
      directive = ''

      if scope.vslide.slideData.widget.widgetData
        directive = '<' + scope.vslide.slideData.widget.widgetName + ' widget-data="vslide.slideData.widget.widgetData" >'
      else
        directive = '<' + scope.vslide.slideData.widget.widgetName + '>'

      linkFn = $compile directive
      widget = linkFn scope
      console.log linkFn
      widgetContainer = element.find '.widget-container'
      widgetContainer.append widget

    #Compile defined small widget directive and append to view
    if typeof scope.vslide.slideData.extraWidget != 'undefined'
      directive = ''

      if scope.vslide.slideData.extraWidget.widgetData
        directive = '<' + scope.vslide.slideData.extraWidget.widgetName + ' widget-data="vslide.slideData.extraWidget.widgetData" >'
      else
        directive = '<' + scope.vslide.slideData.extraWidget.widgetName + '>'

      linkFn = $compile directive
      extraWidget = linkFn scope

      widgetContainer = element.find '.small-widget-container'
      widgetContainer.append extraWidget


])
