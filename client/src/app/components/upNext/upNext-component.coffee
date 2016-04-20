'use strict'
###*
# @ngdoc directive
# @name dcollective.component:upNext
# @description
# # upNext
###
angular.module('dcollective').component('upNext', ->
  templateUrl: 'app/components/upNext/partials/upNext.html'
  bindings:
    nextPage: '='
)
