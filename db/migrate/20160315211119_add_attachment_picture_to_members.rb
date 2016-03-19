class AddAttachmentPictureToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :members, :picture
  end
end
