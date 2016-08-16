class AddAnimationsToWidgets < ActiveRecord::Migration
  def change
    add_column :spina_lines, :animations_value, :integer
  end
end
