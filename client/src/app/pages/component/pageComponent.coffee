'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '<' #Use if you want to completely override the path where the template is
    templateName: '<' #Use if you want to override the template you get from api
    pageData: '<'
  controller: (theme, $log)->
    console.log @pageData , @templateName
    @templateName= @templateName ||  @pageData.layoutTemplate || 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@templateName+'.html'

    if !@pageData
      $log.error('pageComponent: No pageData provided , please provide data in resolve')
      return
    @pageData.getBg = ()->
      if scope.slideData
        {'background-image': 'url('+scope.slideData.backgroundImage.content.file.background.url+')'}
    @