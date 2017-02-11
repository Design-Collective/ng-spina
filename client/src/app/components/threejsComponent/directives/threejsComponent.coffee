'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:threjsComponent
# @description
# # loader
###
angular.module('dcollective')
.directive('threejsComponent', ['$rootScope', 'THREEService',($rootScope, THREEService)->
  template: '<div></div>'
  restrict: 'E'
  link: (scope, element, attrs) ->
    THREEService.load().then (THREE) ->
      container = undefined
      viewsize = undefined
      camera = undefined
      scene = undefined
      geometry = undefined
      material = undefined
      torus = undefined
      renderer = THREEService.getRenderer()
      animation = undefined

      scope.init = ->
        container = element[0]
        viewsize = container.clientWidth
        renderer.setSize viewsize, viewsize
        container.appendChild renderer.domElement
        scene = new (THREE.Scene)
        camera = new (THREE.PerspectiveCamera)(50, 1, 150, 650)
        camera.position.z = 500
        scene.add camera
        geometry = new (THREE.TorusKnotGeometry)(100, 30, 100, 16)
        material = new (THREE.MeshDepthMaterial)(
          color: 0x666666
          wireframe: true
          wireframeLinewidth: 1)
        torus = new (THREE.Mesh)(geometry, material)
        torus.name = 'Torus'
        scene.add torus
        return

      # -----------------------------------
      # Event listeners
      # -----------------------------------
      # Cancel animation when view route or state changes
      # eg. watch for state change when using ui-router:
      $rootScope.$on '$stateChangeStart', ->
        cancelAnimationFrame animation
        return
      # -----------------------------------
      # Draw and Animate
      # -----------------------------------

      scope.animate = ->
        animation = requestAnimationFrame(scope.animate)
        scope.render()
        return

      scope.render = ->
        torus.rotation.x += 0.006
        torus.rotation.y += 0.006
        renderer.render scene, camera, null, true
        # forceClear == true
        return

      scope.init()
      scope.animate()
      return
    return

])