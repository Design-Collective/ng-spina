angular.module('dcollective').component 'search',
  templateUrl: 'app/utils/partials/searchResults.html'
  controller: (Search, $stateParams,$state)->

    @data = {}
    @query = $stateParams.query || $stateParams.q

    Search.query( query: @query).then (res)=>
      @data = res
    ,->
      $state.go '404'
    @