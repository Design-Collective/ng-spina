'use strict'

angular.module('dcollective').directive('templateInjector',['TemplateCompiler','$log',(TemplateCompiler,$log)->
  template: '<div class="template-injector"></div>'
  restrict: 'E'
  link: (scope)->
    injectorContainer = '.template-injector'
    templateUrl = scope.$ctrl.templateUrl || false

    if templateUrl
      TemplateCompiler.getTemplate(templateUrl).then (template)->
        directive = TemplateCompiler.getCompiledDirective template, scope
        TemplateCompiler.inject injectorContainer , directive
    else
      $log.error "pageInjector: Template url empty"
])
