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
    title: '@'
    subTitle: '@'
    caseName: '@'
    sectionName: '@'
    description: '@'
    
  controller: ['$stateParams', 'TemplateCompiler', '$scope', '$log', ($templateRequest,TemplateCompiler, $scope, $log)->
    #required
    if !@menu || !@caseName || !@sectionName
      $log.error 'navSlides required parameter is missing, component stopped'
      return @

    @injector = '.slides-injector-'+@sectionName
    @templateUrl = 'app/cases/'+@caseName+'/partials/'+@sectionName+'_section.html'
    @visibleSlide = @menu[0].target

    $templateRequest(@templateUrl, true).then (html)=>
      template = angular.element html

      #prepare scope ctrl
      $scope.$ctrl = @
    
      template = TemplateCompiler.getCompiledDirective template, $scope
      TemplateCompiler.inject @injector , template
    , (error)->
      $log.error error.data

    @slideTo = (target)->
      @visibleSlide = target

    @isVisible = (target)->
      @visibleSlide == target
    @
  ]
)