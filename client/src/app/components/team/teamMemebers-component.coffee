'use strict'
angular.module('dcollective').component('teamMembers',
  templateUrl: 'app/components/team/partials/teamMembers.html'
  bindings:
    single: '@'
  controller: ['TeamMembers','$stateParams', (TeamMembers, $stateParams)->
    @data = {}

    if @single
      TeamMembers.get( id: $stateParams.id ).then (res)=>
        @data = res
    else
      TeamMembers.get().then (res)=>
        @data = res

    @
  ]
)