class AddSlugToCaseStudies < ActiveRecord::Migration
  def change
    add_column :spina_case_studies, :slug, :string
    add_index :spina_case_studies, :slug
  end
end
