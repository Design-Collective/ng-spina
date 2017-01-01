'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '<' #Use if you want to completely override the path where the template is
    templateName: '<' #Use if you want to override the template you get from api
    pageData: '<'
  controller: (theme, $log)->
    console.log 'PAGE COMPONENT FIRED'
    @templateName= @templateName ||  @pageData.layoutTemplate || 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@templateName+'.html'
    console.log @pageData

    if !@pageData
      $log.error('pageComponent: No pageData provided , please provide data in resolve')
      return

    if !@templateUrl
      $log.error('pageComponent: No templateUrl found , please provide data in resolve')
      return

    @pageData.getBg = ()=>
      if @pageData.hasOwnProperty 'pageParts'
        {'background-image': 'url('+@pageData.pageParts.heroBackgroundImage.content.file.background.url+')'}
    @
