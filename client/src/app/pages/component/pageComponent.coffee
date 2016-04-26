'use strict'
angular.module('dcollective').component 'page',
  template: '<page-injector></page-injector>'
  bindings:
    templateUrl: '@'
  controller: (theme)->
    @templateUrl = @templateUrl || theme.path+'page/page-default.html'

    @