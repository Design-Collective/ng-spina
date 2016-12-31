angular.module('dcollective').run ($log, Constants,ngMeta) ->
  'ngInject'
  Constants.init()
  ngMeta.init()
  $log.debug 'runBlock end'
