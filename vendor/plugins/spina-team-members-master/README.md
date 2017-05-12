![Spina CMS](http://www.denkwebsite.nl/spinacms.png)

[Visit the website](http://www.spinacms.com)

# Getting Started

This is a Spina CMS plugin for Team Members, this project is meant to be cut into a gem and included in your parent Spina project.

```
gem 'spina-members'
```

Run the migration installer to get started.

```
rails g spina_members:install
```

This should copy the migration file required to create the Spina::Member model.

In your Spina project, make sure your selected theme has 'members' added to plugins

```
self.plugins = ['members']
```

Restart your server and head over to '/admin/pages', you should see your plugin located below the Media Library.

That's all it takes to get the plugin working :)

Now modify away and make your own plugins!

This project rocks and uses MIT-LICENSE.
