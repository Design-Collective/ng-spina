angular.module('dcollective').factory 'TemplateCompiler', ['$compile','$timeout',($compile,$timeout)->
  class TemplateCompiler
      
    @inject = (selector, directive)->
      $timeout ->
        container = angular.element selector
        container.append directive

    @getCompiledDirective = (template, scope)->
      templateCompiled = $compile template
      templateCompiled scope
]