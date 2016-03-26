angular.module 'dcollective'
  .run ($log, Constants) ->
    'ngInject'
    Constants.init()
    $log.debug 'runBlock end'
