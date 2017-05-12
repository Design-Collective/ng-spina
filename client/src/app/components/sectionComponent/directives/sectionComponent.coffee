'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:sectionComponent
# @description
# # sectionComponent
###
angular.module('dcollective').directive('sectionComponent',['$compile', '$timeout', 'TemplateCompiler',($compile, $timeout, TemplateCompiler)->

  templateUrl: 'app/components/sectionComponent/partials/sectionComponent.html'
  restrict: 'E'
  scope:
    slideData: '='
  controllerAs: '$ctrl'
  bindToController: true

  controller: ()->

    @widgetClass = @slideData.parameterizedName + "-widget-container"
    @widgetName = @slideData.structureParts.widgetTemplate.content
    @widgetApi = @slideData.structureParts.widgetApiFeed.content

    # TODO: use inview for whatever you want
    @inViewHandler = ($index, $inview, $inviewInfo)->
      console.log "INVIEW", $index, $inview, $inviewInfo

      if $inviewInfo.parts.changed
        console.log "INVIEW CHANGE", $index, $inview, $inviewInfo

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
      backgroundImage = scope.$ctrl.slideData.structureParts.backgroundImage
      if backgroundImage.content
        {'background-image': 'url('+backgroundImage.content.file.background.url+')'}

    #Compile defined widget directive and append to view
    if scope.$ctrl.widgetName
      if scope.$ctrl.widgetApi.length > 0
        directive = "<#{scope.$ctrl.widgetName} widget-data='scope.$ctrl.widgetApi'>"
      else
        directive = "<#{scope.$ctrl.widgetName}>"

      widgetComponent = TemplateCompiler.getCompiledDirective directive, scope
      widgetContainer = ".#{scope.$ctrl.widgetClass}"

      $timeout ()->
         TemplateCompiler.inject "#{widgetContainer}", widgetComponent
      , 1500
        

    #Compile defined small widget directive and append to view
    $extraWidget = scope.$ctrl.slideData.structureParts.extraWidget

    if typeof $extraWidget != 'undefined'

      if $extraWidget.widgetData
        directive = '<' + $extraWidget.widgetName + ' widget-data="$ctrl.slideData.structureParts.extraWidget.widgetData" >'
      else
        directive = '<' +$extraWidget.widgetName + '>'

      widget = TemplateCompiler.getCompiledDirective directive, scope
      TemplateCompiler.inject  '.small-widget-container' , widget

])
