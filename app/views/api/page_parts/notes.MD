# NOTE

The structure setup as you've done it won't work. It's hardcoded and does not take into account the different types of structures we can add via the config. The API needs to be flexible and pull them all out.

I've separated in the controller the fields (regular page_parts) from structures (page_parts of type structure) and created a placeholder for different partials.


# IMPORTANT!
The view needs to spit out dynamic info for every structure. I am giving you an example for the slides (note, I changed "structures" into "slides" in the theme config to keep things consistent:

```
// regular page fields here
...
"slides" : [

  // SLIDE # 1 AS ADDED TO PAGE HERE: https://www.dropbox.com/s/7d74ofsuodlsgz5/Screenshot%202016-03-30%2013.34.08.png?dl=0
  {
    "title" : {
      "type" : "Spina::Line",
      "content": "Large title field - Section # 1"
    },
    "sub_title" : {
      "type" : "Spina::Line",
      "content": "Large title field"
    },
    "bacgkround_image" : {
      "type" : "Spina::Photo",
      # the file array looks like this when returned
      "file": {
        "url": "/uploads/spina/photo/file/1/milkyway.jpg",
        "image": {
          "url": "/uploads/spina/photo/file/1/image_milkyway.jpg"
        },
        "thumb": {
          "url": "/uploads/spina/photo/file/1/thumb_milkyway.jpg"
        }
      }

    },
    "any_field_name" : {
      "type" : "Spina::WhateverType",
      "content" : "If text field has content inside",
      "file" : { // if file array present }
    }
    ... (all the fields setup on the structure)
  },

  // THIS IS FOR SECTION # 2 STILL INSIDE THE SAME ARRAY "slides"
  {
    "title" : {
      "type" : "Spina::Line",
      "content": "Section Number Two"
    }
  },

]
...

```

## Similar setup, another structure budget_ranges

BUDGET RANGES ARE ADDED IN CONFIG TO PAGES: [See screenshot] (https://www.dropbox.com/s/5zjwnom2iz12o1w/Screenshot%202016-03-30%2013.34.42.png?dl=0)

It's still a structure, just a different type. Look at `/config/initializers/themes/default.rb`

Different page types will have different fields, AND different structures added to them. As per spec, some pages can have all the structures added, some pages only 1 or two, so it's really up to us to define page types and which fields&structures you can manage. For now, you can see the homepage, has the hero unit fields + slides + budget_ranges added. We will surely do updates on it as we find more things to add. The API needs to reflect it.

So for budget_ranges, the output follows the principle set with slides, so:

```
...
"budget_ranges" : [
  {
    // all fields for budget range #1 on the page
  },
  {
    // all fields each budget range #2 on the page
  },
  ...
  {
    // fields for budget range #N on the page
  }
]
...
```


## We need to pull ANY structure added to a page
... if we configure more Structures on a page, the API needs to add them automatically, so hardcoding field titles & structure names like you started, doesn't work.

E.g.

```
...
"whatever_structure_name" : [
  {
    // all fields from whatever_structure_1
  },
  {
    // all fields from whatever_structure_2
  }
  ... etc
]
...
```


## Finally, Fields...

I've pulled them out, so they appear in the API

```
"fields": {
  "hero_title": {
    "type": "Spina::Line",
    "content": {
      "id": 24,
      "content": "Hero title of page",
      "created_at": "2016-03-26T02:33:58.130Z",
      "updated_at": "2016-03-30T20:20:59.673Z"
    }
  },
  "hero_background_video": {
    "type": "Spina::Line",
    "content": {
      "id": 25,
      "content": "",
      "created_at": "2016-03-26T02:33:58.178Z",
      "updated_at": "2016-03-26T02:33:58.178Z"
    }
  },
}
...
```

Because I don't now how to just add each field on its own to the root.


# Recap
FINALLY, this is how the structure needs to be:

```
{
  // All regular page fields
  "id": 1,
  "name": "homepage",
  "slug": null,
  "title": "Homepage",
  "menu_title": "Homepage",
  "seo_title": "Homepage",
  "description": "",
  "show_in_menu": true,
  "ancestry": null,
  "view_template": "homepage",
  "created_at": "2016-03-19T19:35:28.123Z",
  "updated_at": "2016-03-26T02:33:58.113Z"

  // then ALL structures
  "slides" : [ { slide 1 all fields }, { slide 2 all fields } ... ]
  "budget_ranges" : [ { budget_range1 all fields }, {budget range 2 all fields }, ... ]
  "some_random_structure" : [ { fields from first }, {fields from second }...]

  // then ALL the fields
  "hero_title" : { }
  "hero_subtitle" : { }
  "hero_background_video" : { }
  "primary_color" : { }
  ...
}
```

### NOTES
Just to be really clear so there's no confusion.

The names of the arrays ("slides", "budget_ranges", "whatever_structure_name" etc.) this is the name of the page_part, like we set it here in `/config/initializers/themes/default.rb`.

Like: [See screenshot ](https://www.dropbox.com/s/jo1p97d2l4evvt2/Screenshot%202016-03-30%2013.27.42.png?dl=0)
