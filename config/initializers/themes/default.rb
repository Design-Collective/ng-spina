::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.layout_parts = []

  theme.page_parts = [
    {
      name:           'text',
      title:          'Text',
      partable_type:  'Spina::Text'
    },{ 
      name: 'sub_title', 
      title: 'Sub title', 
      partable_type: 'Spina::Line' 
    },{ 
      name: 'hero_title', 
      title: 'Hero title', 
      partable_type: 'Spina::Line' 
    },{ 
      name: 'hero_subtitle', 
      title: 'Hero subtitle', 
      partable_type: 'Spina::Line' 
    },{ 
      name: 'hero_background_image', 
      title: 'Hero image', 
      partable_type: "Spina::Photo" 
    },{ 
      name: 'hero_background_video', 
      title: 'Hero background video MP4', 
      partable_type: "Spina::Line" 
    },{ 
      name: 'hero_background_video_webm', 
      title: 'Hero background video WebM', 
      partable_type: "Spina::Line" 
    },{ 
      name: 'hero_background_video_ogv', 
      title: 'Hero background video OGV', 
      partable_type: "Spina::Line" 
    },{ 
      name: 'hero_background_video_poster', 
      title: 'Hero background poster', 
      partable_type: "Spina::Photo" 
    },{ 
      name: 'text', 
      title: 'Text content', 
      partable_type: 'Spina::Text' 
    },{ 
      name: 'primary_color', 
      title: 'Primary color', 
      partable_type: 'Spina::Color'
    },{ 
      name: 'sections', 
      title: 'Sections', 
      partable_type: "Spina::Structure"
    },{ 
      name: 'budget_ranges', 
      title: 'Budget Ranges', 
      partable_type: "Spina::Structure"
    },{ 
      name: 'featured_work_stats', 
      title: 'Featured work stats', 
      partable_type: "Spina::Structure"
    },{ 
      name: 'slider', 
      title: 'Photo slider', 
      partable_type: "Spina::PhotoCollection"
    }
  ]

  theme.view_templates = [
    {
      name:       'homepage',
      title:      'Homepage',
       page_parts: [
        'sub_title',
        'hero_title',
        'hero_subtitle',
        'hero_background_image',
        'hero_background_video',
        'hero_background_video_webm',
        'hero_background_video_ogv',
        'hero_background_video_poster',
        'text',
        'sections',
        'budget_ranges'
      ]
    },
    { # Default / Edit
      name:       'default',
      title:      'Default Page',
      usage:      'Default page type',
      page_parts: [
        'sub_title',
        'hero_title',
        'hero_subtitle',
        'hero_background_image',
        'hero_background_video',
        'text',
        'primary_color',
        'sections',
        'include_title',
        'include_subtitle',
        'include_background_image',
        'include_image',
        'include_text',
        'include_classes',
        'include_button_label',
        'include_classes',
        'include_background_image'
      ]
    },
    # {
    #   name:         'show',
    #   title:        'Some other Default Page Type',
    #   description:  'A simple page',
    #   usage:        'Use for your content',
    #   page_parts: [
    #     'sub_title',
    #     'hero_title',
    #     'hero_subtitle',
    #     'hero_background_image',
    #     'hero_background_video',
    #     'text',
    #     'primary_color',
    #     'sections',
    #     'include_title',
    #     'include_subtitle',
    #     'include_background_image',
    #     'include_image',
    #     'include_text',
    #     'include_classes',
    #     'include_button_label',
    #     'include_classes',
    #     'include_background_image'
    #   ]
    # },
    {
      name:       'work',
      title:      'Work Page',
      usage:      'Work page type',
      page_parts: [
        'sub_title',
        'featured_works_stats',
        'hero_title',
        'hero_subtitle',
        'hero_background_image',
        'hero_background_video',
        'text',
        'primary_color',
        'sections',
        'include_title',
        'include_subtitle',
        'include_background_image',
        'include_image',
        'include_text',
        'include_classes',
        'include_button_label',
        'include_classes',
        'include_background_image'
      ]
    }
  ]

  theme.structures = [
    {
      name: 'sections',
      structure_parts: [{
        name: 'title',
        title: 'Large title',
        partable_type: "Spina::Line"
      },
      {
        name: 'sub_title',
        title: 'Small title',
        partable_type: "Spina::Line"
      },
      {
        name: 'text',
        title: 'Text content',
        partable_type: "Spina::Text"
      },
      {
        name: 'background_image',
        title: 'Section background',
        partable_type: "Spina::Photo"
      },
      {
        name: 'section_image',
        title: 'Section image',
        partable_type: "Spina::Photo"
      },
      {
        name: 'button_label',
        title: 'Button label',
        partable_type: "Spina::Line"
      },
      {
        name: 'button_link',
        title: 'Button link',
        partable_type: "Spina::Line"
      },
      {
        name: 'widget_template',
        title: 'Widget template',
        partable_type: "Spina::Line"
      },
      {
        name: 'widget_api_feed',
        title: 'Widget API feed',
        partable_type: "Spina::Line"
      },
      {
        name: 'css_classes',
        title: 'CSS Classes',
        partable_type: "Spina::Line"
      }]
    },
    {
      name: 'budget_ranges',
      structure_parts: [{
        name: 'value',
        title: 'Value',
        partable_type: "Spina::Line"
      }, {
        name: 'description',
        title: 'Description',
        partable_type: "Spina::Line"
      }]
    },
    {
      name: 'featured_work_stats',
      structure_parts: [{
        name: 'name',
        title: 'Name',
        partable_type: "Spina::Line"
      }, {
        name: 'logo',
        title: 'logo',
        partable_type: "Spina::Photo"
      }, {
        name: 'number',
        title: 'Number',
        partable_type: "Spina::Text"
      }, {
        name: 'label',
        title: 'Label',
        partable_type: "Spina::Line"
      }]
    }
  ]

  theme.custom_pages = [
    {
      name:           'homepage',
      title:          'Homepage',
      sub_title:      'Homepage Subtitle',
      deletable:      false,
      view_template:  'homepage'
    },
    {
      name:           'about',
      title:          'About',
      sub_title:      'About Subtitle',
      deletable:      true,
      view_template:  'default'
    },
    {
      name:           'clients',
      title:          'Clients',
      sub_title:      'Clients Subtitle',
      deletable:      true,
      view_template:  'default'
    },
    {
      name:           'process',
      title:          'Process',
      sub_title:      'Process Subtitle',
      deletable:      true,
      view_template:  'default'
    },
    {
      name:           'portfolio',
      title:          'Portfolio',
      sub_title:      'Portfolio Subtitle',
      deletable:      true,
      view_template:  'default'
    },
    {
      name:           'blog',
      title:          'Blog',
      sub_title:      'Blog Subtitle',
      deletable:      true,
      view_template:  'default'
    },
    {
      name:           'contact',
      title:          'Contact',
      sub_title:      'Contact Subtitle',
      deletable:      true,
      view_template:  'default'
    }
  ]

  # # TODO: @andrii Rename/add the module name(s) here once they are reworked.
  # #theme.plugins = ['members'];
  theme.plugins = ['articles', 'members', 'portfolio'];

end






