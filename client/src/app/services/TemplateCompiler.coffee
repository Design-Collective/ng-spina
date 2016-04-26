angular.module('dcollective').factory 'TemplateCompiler', ['$compile','$timeout','$sce','$templateRequest',($compile,$timeout,$sce,$templateRequest)->
  class TemplateCompiler
      
    @inject = (selector, directive)->
      $timeout ->
        container = angular.element selector
        container.append directive

    @getCompiledDirective = (template, scope)->
      templateCompiled = $compile template
      templateCompiled scope

    ###*
    # @return {Promise} promise with template in resolved
    ###
    @getTemplate = (templateUrl)->
      templateUrl = $sce.getTrustedResourceUrl templateUrl
      $templateRequest templateUrl

]