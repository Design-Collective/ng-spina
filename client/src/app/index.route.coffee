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
        templateUrl: 'app/about/partials/about.html'
        controller: 'showAboutCtrl'
        controllerAs: 'about'
      .state 'process',
        url: '/process'
        templateUrl: 'app/process/partials/process.html'
        controller: 'showProcessCtrl'
        controllerAs: 'process'
      .state 'caseStudy',
        url: '/case/{client}'
        templateUrl: 'app/caseStudy/partials/caseStudy.html'
        controller: 'caseStudyCtrl'
        controllerAs: 'case'
      .state 'work',
        url: '/work'
        templateUrl: 'app/work/partials/work.html'
        controller: 'showWorkCtrl'
        controllerAs: 'work'

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true