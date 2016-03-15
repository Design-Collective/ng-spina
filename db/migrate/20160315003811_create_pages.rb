class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false

      t.timestamps
    end

    add_index :pages, :title, unique: true

  end
end
