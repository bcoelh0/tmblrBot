class AttachedAsset < ActiveRecord::Base
	belongs_to :attachable, :polymorphic => true
	has_attached_file :asset, :styles => { :large => "800x800", :medium => "400x400>", :small => "200x200>" }
	attr_accessor :asset_file_name
	attr_accessor :asset_content_type
	attr_accessor :asset_file_size
	attr_accessor :asset_updated_at

	#attr_accessible :asset, :asset_file_name
end
