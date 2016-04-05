'use strict'
###*
# @ngdoc component
# @name dcollective.component:navSlides
# @description
# The navSlides component use a template injection system.
# the caseName will be used to point out for a prepared template which will be compiled and included
#
###
angular.module('dcollective').component('navSlides',
  templateUrl: 'app/caseStudy/partials/navSlides.html'
  bindings:
    menu: '='
    caseName: '@'
    
  controller:($templateRequest,TemplateCompiler, $scope)->
    @injector = '.slides-injector'
    @templateUrl = 'app/cases/'+@caseName+'/partials/navSlidesSection.html'
    @visibleSlide = false

    $templateRequest(@templateUrl).then (html)=>
      template = angular.element html
      
      #prepare scope ctrl
      $scope.$ctrl = @
      
      template = TemplateCompiler.getCompiledDirective template, $scope
      TemplateCompiler.inject @injector , template

    @slideTo = (target)->
      @visibleSlide = target

    @isVisible = (target)->
      @visibleSlide == target
    @
)