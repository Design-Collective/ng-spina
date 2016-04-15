angular.module('dcollective').directive 'search', ()->
  restrict: 'A'
  scope:
    query: '@search'
  template: '<search query="{{query}}"></search>'