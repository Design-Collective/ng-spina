angular.module('dcollective').factory 'Constants', ['RailsResource','$q','$timeout','$interval', (RailsResource,$q, $timeout,$interval) ->
  class Constants extends RailsResource

    @constants = null


    #TODO: Change url !!!
    @configure
      url: 'http://angular.codeforges.com'
      name: ''

    @init: ()=>

      #TODO: Change data !!!
      @get().then (res)->
        @constants =  menu: [
          { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
          { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
          { title:"Test title", slug: "slug", subTitle: "Sub title here goes it and its longer"  }
        ]

    @getConstants: =>  
      $timeout ()->
        @constants
      , 1000
]