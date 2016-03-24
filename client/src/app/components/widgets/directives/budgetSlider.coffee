'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:budgetSlider
# @description
# # loader
###
angular.module('dcollective').directive('budgetSlider', ->
  templateUrl: 'app/components/widgets/partials/budgetSlider.html'
  restrict: 'E'
  controllerAs: 'bslider'
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
