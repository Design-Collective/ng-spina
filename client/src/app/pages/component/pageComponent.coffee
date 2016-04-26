'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '@'
    pageName: '@'
  controller: (theme,Page, $stateParams)->
    @pageData = {}
    @pageName = @pageName || 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@pageName+'.html'

    if $stateParams.hasOwnProperty 'slug'
      Page.get($stateParams.slug).then (res)=>
        @pageData = res
    else if @pageName != 'default'
      Page.get(@pageName).then (res)=>
        @pageData = res
    @