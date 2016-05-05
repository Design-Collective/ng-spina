class CreateSpinaIcons < ActiveRecord::Migration
  def change
    create_table :spina_icons do |t|
      t.string :icon_class
      t.timestamps null: false
    end
  end
end
