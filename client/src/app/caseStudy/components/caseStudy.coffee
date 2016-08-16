'use strict'
###*
# @ngdoc function
# @name dcollective.component:сaseStudy
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective').component 'caseStudyCtrl',
  templateUrl: 'app/caseStudy/partials/caseStudy.html'
  bindings:
    featuredCase: '='
  controller: ['$stateParams', 'TemplateCompiler', '$scope', ($stateParams, TemplateCompiler, $scope)->
    @featuredCase = @featuredCase || true
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

      if $inviewpart == 'top' && $inview
        @menuFixed = true
      else
        @menuFixed = false

    # if we have client by slug , the its a featured client otherwise use common template
    if( isNaN(@client) && @featuredCase)
      @featured = true
      @template = '<' + @client + '-case></'+ @client + '-case>'

      directive = TemplateCompiler.getCompiledDirective @template, $scope
      TemplateCompiler.inject @injectorContainer , directive
    @
  ]