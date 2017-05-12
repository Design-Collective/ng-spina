angular.module('dcollective').factory 'Constants', ['RailsResource','$q','$timeout','$interval', (RailsResource,$q, $timeout,$interval) ->
  class Constants extends RailsResource

    @constants = null


    #TODO: Change url !!!
    @configure
      url: 'api/constants'
      name: 'constants'

    @init: ()=>

      #TODO: Change data !!!
      @getConstants().then (res)->
        @constants =
          menu: [
            { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
            { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
            { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
          ]
        

    @getConstants: ->
      $timeout ()->
        @constants
      , 1500
]
