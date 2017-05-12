class CreateSpinaMembersTable < ActiveRecord::Migration
  def change
    create_table :spina_members do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :role
      t.string  :facebook_url
      t.string  :twitter_url
      t.string  :instagram_url
      t.string  :linkedin_url
      t.boolean :enabled, default: false
      t.references :spina_user
      t.timestamps
    end
  end
end
