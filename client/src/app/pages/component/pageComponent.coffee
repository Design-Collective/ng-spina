'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '@'
    pageSlug: '@'
    templateName: '@'
  controller: (theme,Page, $stateParams)->
    @pageData = {}
    @templateName= @templateName|| 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@templateName+'.html'

    if $stateParams.hasOwnProperty 'slug' && !@pageSlug
      Page.get($stateParams.slug).then (res)=>
        @pageData = res
    else if @pageSlug
      Page.get(@pageSlug).then (res)=>
        @pageData = res
    @