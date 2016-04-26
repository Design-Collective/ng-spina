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
      .state 'about',
        url: '/about'
        template: '<show-about></show-about>'
      .state 'process',
        url: '/process'
        template: '<show-process></show-process>'
      .state 'caseStudy',
        url: '/case/:client'
        template: '<case-study></case-study>'
      .state 'work',
        url: '/work'
        template: '<show-work></show-work>'
      .state 'page',
        url: '/page/:id'
        template: '<show-page></show-page>'
      .state 'pages',
        url: '/:slug'
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