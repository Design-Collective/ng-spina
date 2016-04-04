angular.module('dcollective').factory 'TemplateCompiler', ['$compile',($compile)->
  class TemplateCompiler
      
    @inject = (selector, directive)->
      container = angular.element selector
      container.append directive

    @getCompiledDirective = (template, scope)->
      templateCompiled = $compile template
      templateCompiled scope

]