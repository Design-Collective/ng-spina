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
    slideData: '='
  controllerAs: 'vslide'
  bindToController: true
  controller: [()->
    @slideData.widget =
      widgetName: 'image-carousel'
      widgetData:[
        {
          src: "http://lorempixel.com/250/55/fashion/",
          class: "additional-style-class"
        }
        {
          src: "http://lorempixel.com/250/55/fashion/",
          class: "additional-style-class"
        }
        {
          src: "http://lorempixel.com/250/55/fashion/",
          class: "additional-style-class"
        }
      ]

    @getBackgroundImage = ()->
      if @slideData.backgroundImage
        'background-image': 'url("'+@slideData.backgroundImage+'")'
    @
  ]
  link: (scope, element, attrs)->
    getDirective = (widget)->
      '<' + widget.widgetName + ' widget-data="vslide.slideData.widget.widgetData" >'

    #Compile defined widget directive and append to view
    if typeof scope.vslide.slideData.widget != 'undefined'

      linkFn = $compile getDirective scope.vslide.slideData.widget
      widget = linkFn scope

      widgetContainer = element.find '.widget-container'
      widgetContainer.append widget

    #Compile defined small widget directive and append to view
#    if typeof scope.vslide.slideData.smallWidget != 'undefined'
#
#      linkFn = $compile scope.vslide.slideData.smallWidget
#      smallWidget = linkFn scope
#
#      widgetContainer = element.find '.small-widget-container'
#      widgetContainer.append smallWidget


])
