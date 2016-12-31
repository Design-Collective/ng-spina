'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:sectional
# @description
# # sectional
###
angular.module('dcollective').directive('sectional',['$compile','$templateCache',($compile,$templateCache)->

  templateUrl: 'app/components/sectional/partials/sectional.html'
  restrict: 'E'
  scope:
    sectionData: '='
  controllerAs: 'sectional'
  bindToController: true
  controller: [()->
    @getBackgroundImage = ()->
      if @sectionData && @sectionData.structureParts.backgroundImage.content
        console.log @sectionData.structureParts.backgroundImage.content.file.background.url
        'background-image': "url('#{@sectionData.structureParts.backgroundImage.content.file.background.url}')"
    @
  ]
  link: (scope, element, attrs)->

    scope.section = scope.sectional.sectionData

    #Compile defined widget directive and append to view
    if typeof scope.sectional.sectionData.widget != 'undefined'
      directive = ''

      if scope.sectional.sectionData.widget.widgetData
        directive = '<' + scope.sectional.sectionData.widget.widgetName + ' widget-data="sectional.sectionData.widget.widgetData" >'
      else
        directive = '<' + scope.sectional.sectionData.widget.widgetName + '>'

      linkFn = $compile directive
      widget = linkFn scope
      widgetContainer = element.find '.widget-container'
      widgetContainer.append widget

    #Compile defined small widget directive and append to view
    if typeof scope.sectional.sectionData.extraWidget != 'undefined'
      directive = ''

      if scope.sectional.sectionData.extraWidget.widgetData
        directive = '<' + scope.sectional.sectionData.extraWidget.widgetName + ' widget-data="sectional.sectionData.extraWidget.widgetData" >'
      else
        directive = '<' + scope.sectional.sectionData.extraWidget.widgetName + '>'

      linkFn = $compile directive
      extraWidget = linkFn scope

      widgetContainer = element.find '.small-widget-container'
      widgetContainer.append extraWidget


])
