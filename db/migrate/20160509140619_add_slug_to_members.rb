class AddSlugToMembers < ActiveRecord::Migration
  def change
    add_column :spina_members, :slug, :string
    add_index :spina_members, :slug
  end
end
