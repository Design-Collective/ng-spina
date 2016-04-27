'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '@' #Use if you want to completely override the path where the template is
    pageSlug: '@' #Use if you want to override the data youll get from api
    templateName: '@' #Use if you want to override the template you get from api
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