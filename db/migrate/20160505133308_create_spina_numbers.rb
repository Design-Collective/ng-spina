class CreateSpinaNumbers < ActiveRecord::Migration
  def change
    create_table :spina_numbers do |t|
      t.integer :number, null: false, default: 0
      t.string :subtitle
      t.timestamps null: false
    end
  end
end
