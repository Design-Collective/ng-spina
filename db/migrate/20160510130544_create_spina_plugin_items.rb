class CreateSpinaPluginItems < ActiveRecord::Migration
  def change
    create_table :spina_plugin_items do |t|
      t.integer :number, null: false, default: 0
      t.integer :items_value
      t.timestamps null: false
    end
  end
end
