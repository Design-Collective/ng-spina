![Spina CMS](http://www.denkwebsite.nl/spinacms.png)

[Visit the website](http://www.spinacms.com)

# Spina - Portfolio Plugin (WIP)

This is a Spina CMS Plugin, based upon [denkGroot/spina-example-plugin](https://github.com/denkGroot/spina-example-plugin).

## Requirements -- Features

1. Manage Client Types
2. Manage Clients
3. Manage Projects

## TODO:

1. Rename models, controllers etc. in the repo
2. Add missing models
3. Generator
4. Add admin tab & views (forms etc) for each model

Also needed:

5. Rails-API views & controllers


# Instructions

This is a Spina CMS plugin example, this project is meant to be cut into a gem and included in your parent Spina project.

To start using this project locally, first clone it and add the following lines to your Gemfile:

```
gem 'spina-portfolio', github: 'Design-Collective/spina-portfolio'
```

Make sure you run the migration installer to get started.

```
rails g spina_portfolio:install
```

This should copy the migration file required to create the Spina::Portfolio model.

In your Spina project theme initializer, make sure your selected theme has 'portfolio' added to plugins

```
self.plugins = ['portfolio']
```

Restart your server and head over to '/admin/pages', you should see your plugin located below the Media Library.

That's all it takes to get the plugin working :)

Now modify away and make your own plugins!

This project rocks and uses MIT-LICENSE.
