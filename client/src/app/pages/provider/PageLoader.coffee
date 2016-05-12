angular.module('dcollective').provider 'PageLoader', ->
  @$get = ->
    {}
  @preparePage = (pageName,templateName)->
    {
      templateName:->
        templateName || pageName

      pageData: (Page, $state, MetaHelper, $stateParams)->
        slug = null

        if pageName
          slug = pageName
        else
          slug = $stateParams.slug

        Page.get(slug).then (res)->
          MetaHelper.setMeta res.meta
          templateName = templateName || res.viewTemplate
          res
        , ->
          $state.go '404'
    }
  @