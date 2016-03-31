angular.module('dcollective').factory 'Post', ['RailsResource','$q', (RailsResource,$q) ->
  class Post extends RailsResource

    @configure
      url: '/some/endpoint'
      name: 'post'

    @getDemoPosts = ->
      $q.when(
        [
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
          { title: '10 Design trends for 2016', category: 'design,user experience', author : 'Ruben T. Mosesian', created: 'December 12, 2015'}
        ]
      )
]