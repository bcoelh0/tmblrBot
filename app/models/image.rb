class Image < ActiveRecord::Base
	has_many :attached_assets, :as => :attachable
	accepts_nested_attributes_for :attached_assets, :allow_destroy => true
	attr_accessor :attachable_id
end
