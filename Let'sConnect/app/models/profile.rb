class Profile < ApplicationRecord
	belongs_to :user 
	has_attached_file :image, :styles => { :medium => "250x250>", :thumb => "100x100>" }, :default_url => "assets/images/avatar.png"

	#do_not_validate_attachment_file_type :image

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
