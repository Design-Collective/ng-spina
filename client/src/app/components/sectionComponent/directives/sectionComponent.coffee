'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:sectionComponent
# @description
# # sectionComponent
###
angular.module('dcollective').directive('sectionComponent',['$compile','$templateCache',($compile)->

  templateUrl: 'app/components/sectionComponent/partials/sectionComponent.html'
  restrict: 'E'
  scope:
    slideData: '&'
  controllerAs: '$ctrl'
  bindToController: true
  link: (scope, element, attrs)->
    scope.getBg = ()->
      if scope.slideData
        {'background-image': 'url('+scope.slideData.backgroundImage.content.file.background.url+')'}
    #Compile defined widget directive and append to view
    if typeof scope.$ctrl.slideData.widget != 'undefined'
      directive = ''

      if scope.$ctrl.slideData.widget.widgetData
        directive = '<' + scope.$ctrl.slideData.widget.widgetName + ' widget-data="$ctrl.slideData.widget.widgetData" >'
      else
        directive = '<' + scope.$ctrl.slideData.widget.widgetName + '>'

      linkFn = $compile directive
      widget = linkFn scope
      console.log linkFn
      widgetContainer = element.find '.widget-container'
      widgetContainer.append widget

    #Compile defined small widget directive and append to view
    if typeof scope.$ctrl.slideData.extraWidget != 'undefined'
      directive = ''

      if scope.$ctrl.slideData.extraWidget.widgetData
        directive = '<' + scope.$ctrl.slideData.extraWidget.widgetName + ' widget-data="$ctrl.slideData.extraWidget.widgetData" >'
      else
        directive = '<' + scope.$ctrl.slideData.extraWidget.widgetName + '>'

      linkFn = $compile directive
      extraWidget = linkFn scope

      widgetContainer = element.find '.small-widget-container'
      widgetContainer.append extraWidget


])
