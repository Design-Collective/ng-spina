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
