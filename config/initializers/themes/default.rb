module Spina
  module DefaultTheme
    include ::ActiveSupport::Configurable

    config_accessor :title, :page_parts, :view_templates, :layout_parts, :custom_pages, :plugins, :structures

    self.title = 'Default theme'

    self.page_parts = [
      { name: 'sub_title', title: 'Sub title', page_partable_type: 'Spina::Line' },
      { name: 'og_image', title: 'Open Graph Image', page_partable_type: "Spina::Photo" },
      { name: 'hero_title', title: 'Hero title', page_partable_type: 'Spina::Line' },
      { name: 'hero_subtitle', title: 'Hero subtitle', page_partable_type: 'Spina::Line' },
      { name: 'hero_background_image', title: 'Hero image', page_partable_type: "Spina::Photo" },
      { name: 'hero_background_video', title: 'Hero background video', page_partable_type: "Spina::Line" },
      { name: 'text', title: 'Text content', page_partable_type: 'Spina::Text' },
      { name: 'primary_color', title: 'Primary color', page_partable_type: 'Spina::Color' },
      { name: 'slides', title: 'Slides', page_partable_type: "Spina::Structure"},
      { name: 'budget_ranges', title: 'Budget Ranges', page_partable_type: "Spina::Structure"},
      { name: 'featured_work_stats', title: 'Featured work stats', page_partable_type: "Spina::Structure"},
      { name: 'slider', title: 'Photo slider', page_partable_type: "Spina::PhotoCollection"}
    ]

    self.structures = {

      'slides' => [
        {
          name: 'title',
          title: 'Large title',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'sub_title',
          title: 'Small title',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'text',
          title: 'Text content',
          structure_partable_type: "Spina::Text"
        },
        {
          name: 'background_image',
          title: 'Section background image',
          structure_partable_type: "Spina::Photo"
        },
        {
          name: 'section_image',
          title: 'Section image',
          structure_partable_type: "Spina::Photo"
        },
        {
          name: 'button_label',
          title: 'Button label',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'button_link',
          title: 'Button link',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'widget_template',
          title: 'Widget template',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'widget_api_feed',
          title: 'Widget API feed',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'css_classes',
          title: 'CSS Classes',
          structure_partable_type: "Spina::Line"
        },
        {
          name: 'icon_class',
          title: 'Icon class',
          structure_partable_type: "Spina::Icon"
        },
        {
          name: 'number',
          title: 'Number',
          structure_partable_type: "Spina::Number"
        }
      ],

      'budget_ranges' => [
        {
          name: 'value',
          title: 'Value',
          structure_partable_type: "Spina::Line"
        }, {
          name: 'description',
          title: 'Description',
          structure_partable_type: "Spina::Line"
        }
      ],

      # For https://www.dropbox.com/s/ahvom6i3gh9165x/Screenshot%202016-03-19%2008.03.06.png?dl=0
      'featured_work_stats' => [
        {
          name: 'name',
          title: 'Name',
          structure_partable_type: "Spina::Line"
        }, {
          name: 'logo',
          title: 'logo',
          structure_partable_type: "Spina::Photo"
        }, {
          name: 'number',
          title: 'Number',
          structure_partable_type: "Spina::Text"
        }, {
          name: 'label',
          title: 'Label',
          structure_partable_type: "Spina::Line"
        }
      ]

    }

    self.layout_parts = []

    self.view_templates = {
      # Defaults
      'default' => { # Default / Edit
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
          'slides',
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
      'show' => { # Default / New
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
          'slides',
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
      # Custom
      'homepage' => {
        title:      'Homepage',
        usage:      'Home page type',
        page_parts: [
          'sub_title',
          'og_image',
          'hero_title',
          'hero_subtitle',
          'hero_background_image',
          'hero_background_video',
          'text',
          'slides',
          'budget_ranges'
        ]
      },
      'work' => {
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
          'slides',
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
      'contact' => {
        title:        'Contact',
        usage:        'Contact page',
        page_parts:   ['text']
      }
    }

    self.custom_pages = [
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
        view_template:  'work'
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

    # TODO: @andrii Rename/add the module name(s) here once they are reworked.
    #self.plugins = ['team_members'];
    self.plugins = ['articles', 'team_members', 'portfolio'];

  end
end

theme = Spina::Theme.new
theme.name = 'default'
theme.config = Spina::DefaultTheme.config
Spina.register_theme(theme)




__END__

---- SAMPLE THEME ---

module Denkgroot
  include ActiveSupport::Configurable

  config_accessor :title, :page_parts, :view_templates, :layout_parts, :custom_pages, :plugins, :structures

  self.title = "denkGroot thema"

  self.page_parts = [
    { name: 'text', title: 'Text', page_partable_type: "Spina::Text" },
    { name: 'teaser', title: 'Teaser', page_partable_type: "Spina::Line" },
    { name: 'hero_photo', title: 'Hero photo', page_partable_type: "Spina::Photo" },
    { name: 'left_column', title: 'Left column', page_partable_type: "Spina::Text" },
    { name: 'right_column', title: 'Right column', page_partable_type: "Spina::Text" },
    { name: 'full_width_photo', title: 'Photo full width', page_partable_type: "Spina::Photo"},
    { name: 'full_width_slider', title: 'Photo slider', page_partable_type: "Spina::PhotoCollection"},
    { name: 'prototyping', title: 'Prototyping', page_partable_type: "Spina::Text" },
    { name: 'prototyping_tags', title: 'Prototyping tags', page_partable_type: "Spina::Line" },
    { name: 'development', title: 'Development', page_partable_type: "Spina::Text" },
    { name: 'development_tags', title: 'Development tags', page_partable_type: "Spina::Line" },
    { name: 'integration', title: 'Integration', page_partable_type: "Spina::Text" },
    { name: 'integration_tags', title: 'Integration tags', page_partable_type: "Spina::Line" },
    { name: 'author', title: 'Author', page_partable_type: "Spina::Line" },
    { name: 'publication_date', title: 'Publication date', page_partable_type: "Spina::Line" },
    { name: 'tags', title: 'Tags', page_partable_type: "Spina::Line" },
    { name: 'color', title: 'Color', page_partable_type: "Spina::Color" },
    { name: 'clients', title: 'Clients', page_partable_type: "Spina::PhotoCollection" },
    { name: 'logo', title: 'Logo', page_partable_type: "Spina::Photo" },
    { name: 'teaser_photo', title: 'Teaser photo', page_partable_type: "Spina::Photo" },
    { name: 'case_photos', title: "Gallery", page_partable_type: "Spina::PhotoCollection" },
    { name: 'team', title: "Team", page_partable_type: "Spina::Structure" }
  ]

  self.structures = {
    'team' => [{
      name: 'name',
      title: 'Naam',
      structure_partable_type: "Spina::Line"
    }, {
      name: 'role',
      title: 'Rol',
      structure_partable_type: "Spina::Line"
    }, {
      name: 'description',
      title: 'Beschrijving',
      structure_partable_type: "Spina::Text"
    }]
  }

  self.view_templates = {
    'homepage' => {
      title: 'Homepage',
      page_parts: ['teaser', 'hero_photo']
    },
    'show' => {
      title: 'Wat we doen',
      description: 'Wat we doen pagina met over ons en zo',
      usage: 'Geschikt voor o.a.: "Over ons"-pagina',
      page_parts: ['teaser', 'left_column', 'right_column', 'full_width_photo', 'prototyping', 'prototyping_tags', 'development', 'development_tags', 'integration', 'integration_tags', 'full_width_slider', 'team']
    },
    'blogpost' => {
      title: 'Blogpost',
      description: 'Write blogposts and add them to your blog',
      usage: 'Blog, news, updates',
      page_parts: ['hero_photo', 'author', 'publication_date', 'text', 'tags']
    },
    'portfolio' => {
      title: 'Portfolio',
      description: 'Portfolio',
      usage: 'Portfolio',
      page_parts: ['teaser', 'clients']
    },
    'case' => {
      title: 'Case',
      description: "Showcase your work using text, imagery and video",
      usage: 'Portfolio, showcase, client work',
      page_parts: ['color', 'logo', 'teaser', 'teaser_photo', 'text', 'case_photos']
    },
    'contact' => {
      title: 'Contact',
      page_parts: ['hero_photo', 'text']
    }
  }

  self.layout_parts = []

  self.custom_pages = [
    { name: 'homepage', title: 'Homepage', deletable: false, view_template: 'homepage' },
    { name: 'blog', title: 'Blog', deletable: false, view_template: 'show' },
    { name: 'portfolio', title: 'Ons werk', deletable: false, view_template: 'portfolio' },
    { name: 'contact', title: 'Contact', deletable: false, view_template: 'contact' }
  ]

  self.plugins = []
end

theme = Spina::Theme.new
theme.name = "Denkgroot"
theme.config = Denkgroot.config
theme.public_theme = false
Spina.register_theme(theme)
