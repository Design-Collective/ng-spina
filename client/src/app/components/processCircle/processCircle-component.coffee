'use strict'
###*
# @ngdoc directive
# @name dcollective.component:processCircle
# @description
# # processCircle
###
angular.module('dcollective').component('processCircle', ->
  templateUrl: 'app/components/processCircle/partials/processCircle.html'
  bindings:
    progress: '='
  controller:->
    @steps = [
      { title: 'Brainstorm', subTitle: 'Ideation and Strategy.' }
      { title: 'Build', subTitle: 'Design and build.' }
      { title: 'Review', subTitle: 'Test and Review' }
      { title: 'Deploy', subTitle: 'Deploy the goods.' }
      { title: 'Iterate', subTitle: 'Test, adapt, iterate.' }
    ]
    @getClass = ->
      if @progress != undefined
        'circle_' + @progress
        
    @showStep = ($index)->
      if @progress == undefined
        true
      else
        $index == @progress
    @
)
