angular.module 'dcollective'
  .config ($stateProvider, $urlRouterProvider,$locationProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        template: '<page page-name="home"></page>'
        meta:
          title: 'DesignCollective',
          titleSuffix: ' | Solutions you want',
          description: 'DesignCollectives home page'
          'og:title': 'Some og title'
          'og:description': 'some og description'
          'og:url': 'some og url'
          'og:image': 'https://s3.amazonaws.com/theshow-production/default/sho_share.png'
      .state 'caseStudy',
        url: '/case/:client'
        template: '<case-study></case-study>'
      .state 'page',
        url: '/page/:slug'
        template: '<page></page>'
      .state 'blogShow',
        url: '/blog/:id'
        template: '<blog single="true"></blog>'
      .state 'blogIndex',
        url: '/blog'
        template: '<blog></blog>'
      .state 'memberShow',
        url: '/team-members/:id'
        template: '<team-members single="true"></team-members>'
      .state 'memberIndex',
        url: '/team-members'
        template: '<team-members></team-members>'

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true