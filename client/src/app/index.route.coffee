angular.module 'dcollective'
  .config ($stateProvider, $urlRouterProvider,$locationProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/home/partials/home.html'
        controller: 'showHomeCtrl'
        controllerAs: 'home'
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

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true