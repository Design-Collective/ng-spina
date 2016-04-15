angular.module('dcollective').config ($stateProvider) ->
  $stateProvider
    .state 'search',
      url: '/search?q'
      template: '<search></search>'
    .state '404',
      template: '<not-found></not-found>'