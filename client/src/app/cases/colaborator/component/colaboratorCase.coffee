'use strict'
###*
# @ngdoc component
# @name dcollective.component:colaboratorCase
# @description
# # loader
###
angular.module('dcollective').component 'colaboratorCase',
  templateUrl: 'app/cases/colaborator/partials/colaboratorCase.html'
  controller: ->
    @productMenu = [
      { title: 'Homepage', target:'home' }
      { title: 'Profiles', target:'profiles' }
      { title: 'Groups', target:'groups' }
      { title: 'Projects', target:'projects' }
      { title: 'Proposals', target:'proposals' }
      { title: 'Job listings', target:'jobListings' }
      { title: 'Inbox Center', target:'inboxCenter' }
      { title: 'Media Vault', target:'mediaVault' }
    ]
    @servicesMenu = [
      { title: 'Branding', target:'branding' }
      { title: 'Web Development', target:'webDev' }
      { title: 'UX/UI Design', target:'uxUi' }
      { title: 'Strategy & Planing', target:'strategy' }
    ]
    @