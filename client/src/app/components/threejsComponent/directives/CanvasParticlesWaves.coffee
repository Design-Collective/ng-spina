'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:threejsComponent
# @description
# # threejsComponent
###
angular.module('dcollective')
.directive('canvasParticlesWaves', ['$rootScope', 'THREEService',($rootScope, THREEService)->
  restrict: 'EA'
  link: (scope, element, attrs) ->
    THREEService.load().then (THREE) ->
      SEPARATION = 100
      AMOUNTX = 50
      AMOUNTY = 50
      container = undefined
      stats = undefined
      camera = undefined
      scene = undefined
      renderer = THREEService.getRenderer()
      particles = undefined
      particle = undefined
      count = 0
      mouseX = 0
      mouseY = 0
      windowHalfX = window.innerWidth / 2
      windowHalfY = window.innerHeight / 2

      scope.init = ->
        container = element[0]
        viewsize = container.clientWidth
        renderer.setSize viewsize, viewsize
        # Add canvas element
        domElement = renderer.domElement
        container.append domElement

        camera = new (THREE.PerspectiveCamera)(75, window.innerWidth / window.innerHeight, 1, 10000)
        camera.position.z = 200
        scene = new (THREE.Scene)
        particles = new Array
        PI2 = Math.PI * 2


        material =  new THREE.SpriteMaterial({
          color: 0xff0040
          program: (context) ->
            console.log "context", context
            context.beginPath()
            context.arc 0, 0, 0.5, 0, PI2, true
            context.fill()
            return
        })

        console.log "MATERIAL", material
        i = 0
        ix = 0
        while ix < AMOUNTX
          iy = 0
          while iy < AMOUNTY
            particle = particles[i++] = new (THREE.Sprite)(material)
            particle.position.x = ix * SEPARATION - (AMOUNTX * SEPARATION / 2)
            particle.position.z = iy * SEPARATION - (AMOUNTY * SEPARATION / 2)
            scene.add particle
            iy++
          ix++


        renderer.setPixelRatio window.devicePixelRatio
        renderer.setSize window.innerWidth, window.innerHeight

        document.addEventListener 'mousemove', scope.onDocumentMouseMove, false
        document.addEventListener 'touchstart', scope.onDocumentTouchStart, false
        document.addEventListener 'touchmove', scope.onDocumentTouchMove, false
        window.addEventListener 'resize', scope.onWindowResize, false
        return

      scope.onWindowResize = ->
        windowHalfX = window.innerWidth / 2
        windowHalfY = window.innerHeight / 2
        camera.aspect = window.innerWidth / window.innerHeight
        camera.updateProjectionMatrix()
        renderer.setSize window.innerWidth, window.innerHeight
        return

      #

      scope.onDocumentMouseMove = (event) ->
        mouseX = event.clientX - windowHalfX
        mouseY = event.clientY - windowHalfY
        return

      scope.onDocumentTouchStart = (event) ->
        if event.touches.length == 1
          event.preventDefault()
          mouseX = event.touches[0].pageX - windowHalfX
          mouseY = event.touches[0].pageY - windowHalfY
        return

      scope.onDocumentTouchMove = (event) ->
        if event.touches.length == 1
          event.preventDefault()
          mouseX = event.touches[0].pageX - windowHalfX
          mouseY = event.touches[0].pageY - windowHalfY
        return

      #

      scope.animate = ->
        animation = requestAnimationFrame(scope.animate)
        scope.render()
        return

      scope.render = ->
        camera.position.x += (mouseX - (camera.position.x)) * .05
        camera.position.y += (-mouseY - (camera.position.y)) * .05
        camera.lookAt scene.position
        i = 0
        ix = 0
        while ix < AMOUNTX
          iy = 0
          while iy < AMOUNTY
            particle = particles[i++]
            particle.position.y = Math.sin((ix + count) * 0.3) * 50 + Math.sin((iy + count) * 0.5) * 50
            particle.scale.x = particle.scale.y = (Math.sin((ix + count) * 0.3) + 1) * 4 + (Math.sin((iy + count) * 0.5) + 1) * 4
            iy++
          ix++
        renderer.render scene, camera
        count += 0.1
        return

      scope.init()
      scope.animate()
      return
    return

])