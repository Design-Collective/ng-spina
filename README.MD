# Design Collective

Spina CMS based system.

# Setup

We've updated the migrations for this project, starting from scratch. You can essentially run:

`$ bundle install`

`$ bundle exec rake db:reset`
`$ bundle exec rake db:migrate

## Plugin Configuration

For every Spina plugin installed, we'll need to make sure that the migrations are properly generated. Each may have a separate installation procedure. Please review the docs.

### Test Reviews Plugin

Run `rails g spina_reviews:install`

Then 
`rake db:migrate` 
or 
`bundle exec rake db:migrate`

### To-do

#### Back-end
- [ ] Spina basic page types & building blocks setup (still WIP / needs a 2nd look)
- [x] Spina endpoints isolated under /admin
- [x] Custom API Controller for all api views with jBuilder. See folder `/app/controllers/api`. For more info, look at [implementing-rails-apis-like-a-professional](http://blog.joshsoftware.com/2014/05/08/implementing-rails-apis-like-a-professional/) and [how-to-expose-a-rails-api](https://seecristicode.wordpress.com/2014/05/24/how-to-expose-a-rails-api/)).
- [ ] API - missing page_structure information in `/app/views/api/pages/show.json.jbuilder`
- [ ] *TBD -- Optimize API views // Move them to the controllers (e.g. on pages_index to include only sections starting with "include" (only info for included stacked sections into a parent)
- [ ] Setup API caching (due to the Spina Structure, there are nested requests going 4, 5 levels deep)
- [ ] *Portfolio Module (TBD) - custom built up to spec
- [ ] *Blog Module (TBD) - custom built up to spec


## Client
- [ ] Setup NG Rails Resource to load in page endpoints
- [ ] Comet Haley

# Configuration & Setup


## Rails Console

Spit out all pages in the console

```> pages = Spina::Page.all```

Homepage Page Parts
```> homepage = Spina::Page.find(1).page_parts```



https://www.dropbox.com/s/g8qqhh00ea44f4j/Screenshot%202016-04-01%2022.10.06.png?dl=0
## Run the App 
- `$ gulp serve:fullstack`

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

## Generating Controllers (semi experimental)
In order to stay organized, lets use the following
- `$ npm install -g generator-gulp-angular-subtask`
or
- `$ npm install -g gulp-angular-subtask`

[documentation](https://github.com/doronsever/generator-gulp-angular-subtask)
### Add a controller
- `$yo gulp-angular-subtask:controller pages --script-type=coffee`

### Add Styelsheet SCSS
- `$ yo gulp-angular-subtask:style pages --style-type="scss"`

### Add HTML Partial using Jade
- `$ yo gulp-angular-subtask:partial pages --html-type=jade`



## Yo Options
`$ yo gulp-angular --help`
## Setup
### Bundle
From the root of the app 
- `bundle install`

###  Database creation
- `$ rake db:create`

### Add Seed Data
- `$ rake db:seed`

### Client
- NPM Components
-- `$ npm install`
- Bower Components
-- `$ bower install`

## Avail Gulp Tasks
- `$ cd client`

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

## Ruby version
- ruby "2.2.2"

## System dependencies 

- Rails: '4.2'
- Rails API: 'rails-api'
- Rails CMS: 'spina'
- DB: Postgres

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
