'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '@'
    pageSlug: '@'
  controller: (theme,Page, $stateParams)->
    @pageData = {}
    @pageSlug = @pageSlug || 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@pageSlug+'.html'

    if $stateParams.hasOwnProperty 'slug' && !@pageSlug
      Page.get($stateParams.slug).then (res)=>
        @pageData = res
    else if @pageSlug != 'default'
      Page.get(@pageSlug).then (res)=>
        @pageData = res
    @