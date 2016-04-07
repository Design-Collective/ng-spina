'use strict'
###*
# @ngdoc function
# @name dcollective.controller:сaseStudy
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'caseStudyCtrl', ($stateParams, TemplateCompiler, $scope)->
  @client = $stateParams.client
  @injectorContainer = '.case-injector'
  @featured = false
  @menuFixed = false

  @demoMenu = [
    {title:'The Service', link: '#service'}
    {title:'The Strategy', link: '#strategy'}
  ]

  #inview used to trigger menu change
  @inViewHandler = ($index, $inview, $inviewpart)->
    console.log $inviewpart
    console.log $inview
    
    if $inviewpart == 'top' && $inview
      @menuFixed = true
    else
      @menuFixed = false
      
  # if we have client by slug , the its a featured client otherwise use common template
  if isNaN(@client)
    @featured = true
    @template = '<' + @client + '-case></'+ @client + '-case>'

    directive = TemplateCompiler.getCompiledDirective @template, $scope
    TemplateCompiler.inject @injectorContainer , directive
  @
