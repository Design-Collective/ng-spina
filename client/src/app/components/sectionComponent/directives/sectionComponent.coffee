'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:sectionComponent
# @description
# # sectionComponent
###
angular.module('dcollective').directive('sectionComponent',['$compile','TemplateCompiler',($compile,TemplateCompiler)->

  templateUrl: 'app/components/sectionComponent/partials/sectionComponent.html'
  restrict: 'E'
  scope:
    slideData: '='
  controllerAs: '$ctrl'
  bindToController: true
  controller: ()->
    # TODO: use inview for whatever you want
    @inViewHandler = ($index, $inview, $inviewpart)->
      if $inviewpart == 'top'
        console.log $inview,$inviewpart

      if $inviewpart == undefined
        console.log $inview,$inviewpart
    @

  link: (scope, element, attrs)->
    console.log scope.$ctrl.slideData
    
    scope.$ctrl.getBg = ()->
      console.log 'GET BG IS CALLED'
      if scope.$ctrl.slideData
        console.log scope.$ctrl.slideData
        {'background-image': 'url('+scope.$ctrl.slideData.structureParts.backgroundImage.content.file.background.url+')'}

    #Compile defined widget directive and append to view
    if typeof scope.$ctrl.slideData.widget != 'undefined'
      directive = ''

      if scope.$ctrl.slideData.widget.widgetData
        directive = '<' + scope.$ctrl.slideData.widget.widgetName + ' widget-data="$ctrl.slideData.widget.widgetData" >'
      else
        directive = '<' + scope.$ctrl.slideData.widget.widgetName + '>'

      widget = TemplateCompiler.getCompiledDirective directive, scope
      TemplateCompiler.inject '.widget-container' , widget

    #Compile defined small widget directive and append to view
    if typeof scope.$ctrl.slideData.extraWidget != 'undefined'
      directive = ''

      if scope.$ctrl.slideData.extraWidget.widgetData
        directive = '<' + scope.$ctrl.slideData.extraWidget.widgetName + ' widget-data="$ctrl.slideData.extraWidget.widgetData" >'
      else
        directive = '<' + scope.$ctrl.slideData.extraWidget.widgetName + '>'

      widget = TemplateCompiler.getCompiledDirective directive, scope
      TemplateCompiler.inject  '.small-widget-container' , widget

])
