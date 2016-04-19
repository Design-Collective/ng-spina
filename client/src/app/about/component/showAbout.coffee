'use strict'
###*
# @ngdoc function
# @name dcollective.component:showAboutCtrl
# @description
# # showAboutCtrl
# Controller of the dcollective
###
angular.module('dcollective').component 'showAbout',
  templateUrl: 'app/about/partials/about.html'
  controller: ()->
    @heroVideo=
      resource: [
        'http://techslides.com/demos/sample-videos/small.webm'
        '*.ogv'
        '*.mp4'
        '*.swf'
      ]
      poster: 'http://placehold.it/2000&text=you%20may%20want%20to%20have%20a%20poster'
      playInfo: {}
    @