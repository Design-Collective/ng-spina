angular.module 'dcollective'
  .config ($stateProvider, $urlRouterProvider,$locationProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        template: '<page template-name="home"></page>'
        resolve:
          pageData: (Page, $state, MetaHelper)->
            Page.get('home').then (res)->
              # TODO: change res.meta to proper field
              MetaHelper.setMeta res.meta
              res
            , ->
              $state.go '404'

      .state 'page',
        url: '/page/:slug'
        template: '<page></page>'
        resolve:
          pageData: (Page, $stateParams, $state, MetaHelper)->
            Page.get($stateParams.slug).then (res)->
              # TODO: change res.meta to proper field
              MetaHelper.setMeta res.meta
              res
            , ->
              $state.go '404'
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