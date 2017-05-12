'use strict'
angular.module('dcollective').component 'page',
  template: '<template-injector template-url="{{$ctrl.templateUrl}}" template-data="$ctrl.pageData"></template-injector>'
  bindings:
    templateUrl: '<' #Use if you want to completely override the path where the template is
    templateName: '<' #Use if you want to override the template you get from api
    pageData: '<'
  controller: (theme, $log)->

    @templateName= @templateName ||  @pageData.layoutTemplate || 'default'
    @templateUrl = @templateUrl || theme.path+'page/partials/page-'+@templateName+'.html'

    if !@pageData
      $log.error('pageComponent: No pageData provided , please provide data in resolve')
      return

    @pageData.heroVideo =
      # TODO: bind to backend-data / slideData
      resource: [
        "#{@pageData.pageParts.heroBackgroundVideoWebm.content}"
        "#{@pageData.pageParts.heroBackgroundVideoOgv.content}"
        "#{@pageData.pageParts.heroBackgroundVideo.content}"
        '*.swf'
      ]
      poster: "#{@pageData.pageParts.heroBackgroundVideoPoster.content.file.background.url}"
      playInfo: {}
      fullScreen: true
      muted: true
      zIndex: '1'
      pausePlay: true

    @pageData.getBg = ()=>
      if @pageData.hasOwnProperty 'pageParts'
        {'background-image': 'url('+@pageData.pageParts.heroBackgroundImage.content.file.background.url+')'}
    @