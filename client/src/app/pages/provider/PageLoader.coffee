angular.module('dcollective').provider 'PageLoader', ->
  @$get = ->
    {}
  @preparePage = (pageName,templateName, pageId)->
    {
      templateName:->
        templateName || pageName

      pageData: (Page, $state, MetaHelper, $stateParams)->
        slug = null

        if pageId
          slug = pageId
        else if pageName
          slug = pageName
        else
          slug = $stateParams.slug

        Page.get(slug).then (res)->
          MetaHelper.setMeta res.meta
          templateName = templateName || res.viewTemplate
          console.log res
          res
        , ->
          $state.go '404'
    }
  @