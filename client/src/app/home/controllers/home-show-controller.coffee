'use strict'
###*
# @ngdoc function
# @name dcollective.controller:homeShowCtrl
# @description
# # homeShowCtrl
# Controller of the dcollective
###
angular.module('dcollective').controller 'showHomeCtrl', () ->
  @data = {
    title: 'Main title'
    subTitle: 'Small sub title'
    text: 'Some long small text for the special container'
    buttonLink: 'http://collective.dev:3619/'
    buttonText: 'This a button'
    widget: {}
    smallWidget: {}
    sideWidget: {},
    upNext:
      title: 'About us'
      backgroundImage: 'http://lorempixel.com/1280/800/people'
    slides: [
      {
        title: 'We are'
        subTitle: 'Believers. Dreamers. Designers. Developers. Entrepreneurs.'
        # text: 'Some long small text for the special container'
        buttonLink: 'http://collective.dev:3619/about'
        buttonText: 'More about us',
        customClass: "sky"

      },
      {
        title: 'We work with'
        subTitle: 'Awesome People Who Do Awesome Things.'
        # text: 'Some long small text for the special container'
        buttonLink: 'http://collective.dev:3619/work'
        buttonText: 'More About Who We Work With'
        backgroundImage: 'http://lorempixel.com/1280/800/people',
        widget:
          widgetName: 'icons-widget'
          widgetData: [
            {
              title: 'Helllo '
              class: 'icom-cool'
              link: '/about-us'
            }
            {
              title: 'Helllo'
              class: 'icom-cool'
              link: '/about-us'
            }
            {
              title: 'Helllo'
              class: 'icom-cool'
              link: '/about-us'
            }
          ]
        customClass: "overlay pink"

      },
      {
        title: 'Our Process is'
        subTitle: 'Lean, Flexible and Agile.'
        text: 'We love to adapt and iterate. We approach every project we get using the Agile Methodology. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod.'
        buttonLink: 'http://collective.dev:3619/work'
        buttonText: 'More About Who We Work With'
        backgroundImage: 'http://lorempixel.com/1280/800/city',
        widget:
          widgetName: 'image-widget',
          widgetData:
            src: "http://lorempixel.com/400/400/city",
            class: "additional-style-class"
        customClass: "overlay yellow"
      },
      {
        title: 'We Build'
        subTitle: 'Top-Shelf Mobile and Web Applications'
        # text: 'We love to adapt and iterate. We approach every project we get using the Agile Methodology. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod.'
        buttonLink: 'http://collective.dev:3619/work'
        buttonText: 'More About Who We Work With'
        backgroundImage: 'http://lorempixel.com/1280/800/city',
        customClass: "overlay pink-inverted"
        widget:
          widgetName: 'image-carousel'
          widgetData: [
            {
              src: 'http://lorempixel.com/80/80/people'
              class: 'icom-cool'
              link: '/about-us'
             }
            {
              src: 'http://lorempixel.com/80/80/people'
              class: 'icom-cool'
              link: '/about-us'
            }
            {
              src: 'http://lorempixel.com/80/80/people'
              class: 'icom-cool'
              link: '/about-us'
            }
          ]
        extraWidget:
          widgetName: 'budget-slider',
          widgetData: null
      }
    ]
  }

  @
