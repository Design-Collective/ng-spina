angular.module('dcollective').component 'search',
  templateUrl: 'app/utils/partials/searchResults.html'
  bindings:
    query: '@'
  controller: (Search, $stateParams,$state)->
    @data = {}

    if !@query
      @query = $stateParams.query || $stateParams.q

    Search.query( query: @query).then (res)=>
      @data = res
    ,->
      $state.go '404'
    @