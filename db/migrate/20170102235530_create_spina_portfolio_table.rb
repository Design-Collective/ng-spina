class CreateSpinaPortfolioTable < ActiveRecord::Migration
  def change
    create_table :spina_case_studies do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :client_name
      t.string :employee_name
      t.string :employee_title
      t.text :testimonial
      t.timestamps
    end
  end
end
