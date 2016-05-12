angular.module 'dcollective'
  .config ($stateProvider, $urlRouterProvider, $locationProvider, PageLoaderProvider) ->
    'ngInject'

    $stateProvider
      .state 'home',
        url: '/'
        component: 'page'
        resolve: PageLoaderProvider.preparePage('homepage','home')
      .state 'page',
        url: '/page/:slug'
        component: 'page'
        resolve: PageLoaderProvider.preparePage()
      .state 'caseStudy',
        url: '/case/:client'
        template: '<case-study></case-study>'
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