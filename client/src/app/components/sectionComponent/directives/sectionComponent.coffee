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
    @inViewHandler = ($index, $inview, $inviewInfo)->
      console.log "INVIEW", $index, $inview, $inviewInfo

      if $inviewInfo.parts.top 
        console.log "INVIEW PART TOP", $index, $inview, $inviewInfo

      if $inviewInfo.parts.bottom
        console.log "INVIEW PART BOTTOM", $index, $inview, $inviewInfo

      if $inviewInfo.parts.top && $inviewInfo.parts.bottom
        console.log "INVIEW PART both", $index, $inview, $inviewInfo

      if !$inviewInfo.parts.top && !$inviewInfo.parts.bottom
        console.log "INVIEW PART neither", $index, $inview, $inviewInfo

      if $inviewInfo.parts == undefined
        console.log "INVIEW PART undefined", $index, $inview, $inviewInfo
    @

  link: (scope, element, attrs)->    
    scope.$ctrl.getBg = ()->
      if scope.$ctrl.slideData
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
