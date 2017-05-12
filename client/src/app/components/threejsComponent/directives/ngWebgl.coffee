'use strict'
###*
# @ngdoc directive
# @name dcollective.directive:ngWebgl
# @description
# # threejsComponent
###
angular.module('dcollective')

.directive('ngWebgl', ['$rootScope',($rootScope)->
  restrict: 'A'
  scope:
    'width': '='
    'height': '='
    'fillcontainer': '='
    'scale': '='
    'materialType': '='
  link: (scope, element, attrs) ->
    camera = undefined
    scene = undefined
    renderer = undefined
    shadowMesh = undefined
    icosahedron = undefined
    light = undefined
    mouseX = 0
    mouseY = 0
    contW = if scope.fillcontainer then element[0].clientWidth else scope.width
    contH = scope.height
    windowHalfX = contW / 2
    windowHalfY = contH / 2
    materials = {}

    scope.init = ->
      # Camera
      camera = new (THREE.PerspectiveCamera)(20, contW / contH, 1, 10000)
      camera.position.z = 1800
      # Scene
      scene = new (THREE.Scene)
      # Ligthing
      light = new (THREE.DirectionalLight)(0xffffff)
      light.position.set 0, 0, 1
      scene.add light
      # Shadow
      canvas = document.createElement('canvas')
      canvas.width = 128
      canvas.height = 128
      # Render a 2d gradient to use as shadow
      context = canvas.getContext('2d')
      gradient = context.createRadialGradient(canvas.width / 2, canvas.height / 2, 0, canvas.width / 2, canvas.height / 2, canvas.width / 2)
      gradient.addColorStop 0.1, 'rgba(200,200,200,1)'
      gradient.addColorStop 1, 'rgba(255,255,255,1)'
      context.fillStyle = gradient
      context.fillRect 0, 0, canvas.width, canvas.height
      shadowTexture = new (THREE.Texture)(canvas)
      shadowTexture.needsUpdate = true
      shadowMaterial = new (THREE.MeshBasicMaterial)(map: shadowTexture)
      shadowGeo = new (THREE.PlaneGeometry)(300, 300, 1, 1)
      # Apply the shadow texture to a plane
      shadowMesh = new (THREE.Mesh)(shadowGeo, shadowMaterial)
      shadowMesh.position.y = -250
      shadowMesh.rotation.x = -Math.PI / 2
      scene.add shadowMesh
      faceIndices = [
        'a'
        'b'
        'c'
        'd'
      ]
      color = undefined
      f = undefined
      p = undefined
      n = undefined
      vertexIndex = undefined
      radius = 200
      geometry = new (THREE.IcosahedronGeometry)(radius, 1)
      i = 0
      while i < geometry.faces.length
        f = geometry.faces[i]
        n = if f instanceof THREE.Face3 then 3 else 4
        j = 0
        while j < n
          vertexIndex = f[faceIndices[j]]
          p = geometry.vertices[vertexIndex]
          color = new (THREE.Color)(0xffffff)
          color.setHSL 0.125 * vertexIndex / geometry.vertices.length, 1.0, 0.5
          f.vertexColors[j] = color
          j++
        i++
      materials.lambert = new (THREE.MeshLambertMaterial)(
        color: 0xffffff
        shading: THREE.FlatShading
        vertexColors: THREE.VertexColors)
      materials.phong = new (THREE.MeshPhongMaterial)(
        ambient: 0x030303
        color: 0xdddddd
        specular: 0x009900
        shininess: 30
        shading: THREE.FlatShading
        vertexColors: THREE.VertexColors)
      materials.wireframe = new (THREE.MeshBasicMaterial)(
        color: 0x000000
        shading: THREE.FlatShading
        wireframe: true
        transparent: true)
      # Build and add the icosahedron to the scene
      icosahedron = new (THREE.Mesh)(geometry, materials[scope.materialType])
      icosahedron.position.x = 0
      icosahedron.rotation.x = 0
      scene.add icosahedron
      renderer = new (THREE.WebGLRenderer)(antialias: true)
      renderer.setClearColor 0xffffff
      renderer.setSize contW, contH
      # element is provided by the angular directive
      element[0].appendChild renderer.domElement
      document.addEventListener 'mousemove', scope.onDocumentMouseMove, false
      window.addEventListener 'resize', scope.onWindowResize, false
      return

    # -----------------------------------
    # Event listeners
    # -----------------------------------

    scope.onWindowResize = ->
      scope.resizeCanvas()
      return

    scope.onDocumentMouseMove = (event) ->
      mouseX = event.clientX - windowHalfX
      mouseY = event.clientY - windowHalfY
      return

    # -----------------------------------
    # Updates
    # -----------------------------------

    scope.resizeCanvas = ->
      contW = if scope.fillcontainer then element[0].clientWidth else scope.width
      contH = scope.height
      windowHalfX = contW / 2
      windowHalfY = contH / 2
      camera.aspect = contW / contH
      camera.updateProjectionMatrix()
      renderer.setSize contW, contH
      return

    scope.resizeObject = ->
      icosahedron.scale.set scope.scale, scope.scale, scope.scale
      shadowMesh.scale.set scope.scale, scope.scale, scope.scale
      return

    scope.changeMaterial = ->
      icosahedron.material = materials[scope.materialType]
      return

    # -----------------------------------
    # Draw and Animate
    # -----------------------------------

    scope.animate = ->
      requestAnimationFrame scope.animate
      scope.render()
      return

    scope.render = ->
      camera.position.x += (mouseX - (camera.position.x)) * 0.05
      # camera.position.y += ( - mouseY - camera.position.y ) * 0.05;
      camera.lookAt scene.position
      # console.log "RENDERER", renderer
      # console.log "SCENE", scene
      # console.log "CAMERA", camera
      renderer.render scene, camera
      return

    # -----------------------------------
    # Watches
    # -----------------------------------
    scope.$watch 'fillcontainer + width + height', ->
      scope.resizeCanvas()
      return
    scope.$watch 'scale', ->
      scope.resizeObject()
      return
    scope.$watch 'materialType', ->
      scope.changeMaterial()
      return
    # Begin
    scope.init()
    scope.animate()
    return

])
