angular.module('dcollective').factory 'TemplateCompiler', ['$compile',($compile)->
  class TemplateCompiler

    @getCompiledDirective = (template, scope)->
      templateCompiled = $compile template
      templateCompiled scope

    @inject = (selector, directive)->
      container = angular.element selector
      container.append directive
]