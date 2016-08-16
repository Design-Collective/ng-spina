'use strict'
angular.module('dcollective').component('blog',
  templateUrl: 'app/components/blog/partials/blog.html'
  bindings:
    single: '@'
  controller: ['Article', '$stateParams', (Article, $stateParams)->

    if @single
      Article.get( id: $stateParams.id ).then (res)=>
        @data = res
    else
      Article.get().then (res)=>
        @data = res
    @
  ]
)