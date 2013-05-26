class AddAttachementToImages < ActiveRecord::Migration
  def self.up
    add_attachment :images, :attached_asset
  end

  def self.down
    remove_attachment :images, :attached_asset
  end
end
