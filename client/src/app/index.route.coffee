angular.module 'dcollective'
  .config ($stateProvider, $urlRouterProvider,$locationProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        template: '<show-home></show-home>'
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
        url: '/pages'
        template: '<index-page></index-page>'


    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true