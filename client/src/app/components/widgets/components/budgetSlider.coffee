'use strict'
###*
# @ngdoc directive
# @name dcollective.component:budgetSlider
# @description
# # loader
###
angular.module('dcollective').component('budgetSlider', ->
  templateUrl: 'app/components/widgets/partials/budgetSlider.html'
  controller: ->
    @budgetValue = 0
    @budgets = [
      '$5-$10K',
      '$15-$35K',
      '$40-$75K',
      '$80K+'
    ]
    @getBudget = ->
      @budgets[@budgetValue]
    
    @
)
