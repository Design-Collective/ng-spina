'use strict'

angular.module('dcollective').directive('templateInjector',['TemplateCompiler','$log',(TemplateCompiler,$log)->
  template: '<div class="template-injector"></div>'
  restrict: 'E'
  scope:
    templateUrl: '@'
    templateData: '<'
  link: (scope)->

    injectorContainer = '.template-injector'
    templateUrl = scope.templateUrl || false

    if templateUrl
      TemplateCompiler.getTemplate(templateUrl).then (template)->
        directive = TemplateCompiler.getCompiledDirective template, scope
        console.log 'TEMPLATE COMPILER'
        TemplateCompiler.inject injectorContainer , directive
    else
      $log.error "pageInjector: Template url empty"
])
