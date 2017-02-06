## DC App docs

#### Gulp app tasks
Gulp has got several new tasks in order to main the dcollective app
Bellow are few of them with some description:

##### production-partials
This is a task to handle the so called `production-partials`.
They are common html where you can inject for example some analytics scripts or similar.
Gulp will read the folder `src/production_partials/` and take each files inside code and inject in
`index.html` inside this comment:

```
    <!-- inject:partials:html -->
    <!-- production partials goes here -->
    <!-- endinject -->
```
So dont delete it.

##### constants
This tasks is required for env.constants.json to work , read more about it below:

###### env.constants.json
This file needs to be added for every environment within the client folder. This will end up being compiled into the dist folder at /client/dist/env.constants.json.

```json
{
  "constants": {
    "instaAccessToken": "**************",
    "instaClientId": "*******************",
    "instaSecret": "*****************"
  }
}
```

The `"constants"` key is importants , inside it each key will be injected in angular as a constant, the file name is
important aswell , it will be converted to module name , which is injected in index.module.coffee ( index.module.js )

When the application is served through the gulp server it will appear as a module on /client/.tmp/serve/app/env.constants.js and when the distribution build is used, it will already appear compiled into the dist js file automatically (i.e. /client/dist/scripts/app-eb8a87221e.js).

```javascript
angular.module("env.constants", [])

.constant("instaAccessToken", "**************")

.constant("instaClientId", "*******************")

.constant("instaSecret", "*****************")

;

```
##### styles Additions
The styles task got 2 new methods:
```
buildFonts
buildFavicons
```

###### buildFavicons :
Is a organizing taks , it gets the favicons from the folder `src/assets/favicon` and puts them in apps root.
This is done to keep the working directory clean and only have the icons on builds

###### buildFonts :
Is used for none bower and non free fonts , will grab any fonts in `src/assets/fonts` folder and transfer
them to build folder

#### App structure
The application is written in a component based manner and the time this readme was writen has used latest Angular 1.5  version.
To keep the app updated and match it to Angular2 $scope is 99% avoided as well as no controllers are used instead we are using 1.5 introduced feature `component`.

##### Routing has no templateUrls or controller calls , instead we are using so called `view components`
Those are called  in `template:'<my-component></my-component>'` , simply as elements.

##### The folder structure has a couple of major notes to take in to account.

##### Themes

Now you can create themes and use them in your components.
Theme folder is located in `app/` it should have a folder named by the name of the theme  the is a default theme, which will have default templates for components.

1. `app/components` - Now whenever you are create small components or components that will be reusable , put them inside here
with the corresponding component named folder.
Inside that folder (example: `app/component/myComponent`) you can have a similar structure as all over the app.

2. Everything you define in routing , those views that will be displayed in route match , those should be in the `app/` root within a folder with the components name.

3. Resources , here store all your resources/

4. Services , not only service in terms of angular but also helpers and factories can be stored here.

#### Components description and use
There are general components that are acting like pages , they behaviour is mostly clear so it want be described.

##### v-slide directive
One of the key components that is used all over the app.
The `<v-slide></v-slide>` is the building block of a page , it is that section component which also might have smaller components ( widgets ).
Handle to it the data and it will build a section:
```
<v-slide slide-data='data.fromServer'></v-slide>
```
Now the data that is handled should have the following structure:
```
slideData =
    title:
    subTitle
    text
    buttonLabel
    buttonLink
    widget:
        widgetData
        widgetName
    extraWidget
        widgetData
        widgetName
```
> Note the `widgetData` this where you store data for widgets and widgetName should  be the name of the component


##### case-study
Also a view-component , its general purpose is to track the route , when ever it sees that you have a client handled by slug like case/colaborator
It will use a custom template for the corresponding client you can turn off this feature (on by default) by providing featured-case='false' as attribute:

```
# in index.route.coffee
 .state 'caseStudy',
        url: '/case/:client'
        template: '<case-study featured-case='false'></case-study>'
```

###### Featured case
The featured case will fire only when you have in the route a slug instead of the id.
Then you have to provide a folder inside the `src/app/cases/` called by the name of the client (case).

Here is an example folder structure:
```
app
    case
        colablorator
            component
            partials
                colaboratorCase.jade # IMPORTANT!
            styles

```

> Notice the partial colaboratorCase.jade it is important to have this partials for Featured case to work , the format is simple `clientCase`

###### Page component
Will utilize `theme-injector` and will work as a general page component.
It uses a `templateUrl` attr in order to determine what template will be loaded for the page , by default it will uses the default page template from default theme

#### Directives

##### page-injector directive

This directive is used to inject templates.
use it in your components to inject required template.

