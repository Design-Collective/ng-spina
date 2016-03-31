'use strict'
###*
# @ngdoc function
# @name dcollective.controller:сaseStudy
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'caseStudyCtrl', ($stateParams,TemplateCompiler, $scope)->
  @client = $stateParams.client
  @injectorContainer = '.case-injector'

  if @client
    @template = '<' + @client + '-case></'+ @client + '-case>'
    directive = TemplateCompiler.getCompiledDirective @template, $scope
    TemplateCompiler.inject @injectorContainer , directive
  @
