== README

## Ruby version
ruby "2.2.2"

## System dependencies 

Rails: '4.1.9'
Rails API: 'rails-api'
DB: Postgres

## Client Dependancies 
https://github.com/Swiip/generator-gulp-angular

## Run the App 
`$ gulp serve:full-stack`

This should run your rails app and the front end app together and open the browser sync instance proxied so that the back end application data can be retrieved with the same urls. 

### Virtual Host
Create a virtual host or user powder to run collective.dev on port 3619
(Local Dev Host should be set by all devs to `collective.dev`)

### API Endpoints
http://collective.dev/api/pages
### Also uses Resource Factory via Angular Rails Resources
https://github.com/FineLinePrototyping/angularjs-rails-resource

The front-end server should come up on port 3619

If you dont run your rails server navigate to http://collective.dev/api/pages, you should get a Rails page that says No route matches [GET] "/api/pages", which means
Rails is running correctly.

The backend server should come up on port 3000.

## Yo Options
`$ yo gulp-angular --help`
## Setup
### Bundle
From the root of the app `bundle install`

###  Database creation
`rake db:create`
### Add Seed Data
`rake db:seed`

### Client
NPM Components
`npm install`
Bower Components
`bower install`

## Avail Gulp Tasks
`cd client`

It's time to use Gulp tasks:
- `$ gulp` to build an optimized version of your application in folder dist
- `$ gulp serve:fullstack` to start Rails & BrowserSync server on your source files with live reload
- `$ gulp serve` to start BrowserSync server on your source files with live reload
- `$ gulp serve:dist` PRODUCTION - to start BrowserSync server on your optimized application without live reload
- `$ gulp rails` to run Rails (alias of cd ../show-api && rails s -b 0.0.0.0)
- `$ gulp test` to run your unit tests with Karma
- `$ gulp test:auto` to run your unit tests with Karma in watch mode
- `$ gulp protractor` to launch your e2e tests with Protractor
- `$ gulp protractor:dist` to launch your e2e tests with Protractor on the dist files

##BrowserSync 
Go to http://collective.dev:3001/ and see configs and sync data

## Specs
### Angular: 1.4.x (stable)
- Angular Modules: angular-animate.js (enable animation features), angular-cookies.js (handle cookie management), angular-touch.js (for mobile development), angular-sanitize.js (to securely
 parse and manipulate HTML), angular-messages.js (enhanced support for displaying messages within templates), angular-aria.js (suppor
t for common ARIA attributes)

### Processors and Frameworks
- jQuery: jQuery 2.x (new version, lighter, IE9+)
- REST resource library: ngResource, the official support for RESTful services
- Router:  UI Router, flexible routing with nested views
- UI Framework: Angular Material, the reference implementation of the Google's Material Design specification
- CSS PreProcessor: Sass (Node), Node.js binding to libsass, the C version of the popular stylesheet preprocessor, 
Sass.
- Js Preprocessor: CoffeeScript, "a little language that compiles into JavaScript".
- HTML Template Engine: Jade (*.jade)

##  Configuration
WIP

##  Database  Info
dcollective/config/database.yml

##  How to run the test suite
WIP

##  Services (job queues, cache servers, search engines, etc.)
WIP

##  Deployment instructions
WIP

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
