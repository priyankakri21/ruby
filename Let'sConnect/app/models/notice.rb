class Notice < ApplicationRecord

has_attached_file :document,:path => ":rails_root/public/:attachment/:id/:style/:basename.:extension",
	:url => "/:attachment/:id/:style/:basename.:extension"


	#validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
     validates_attachment_content_type :document, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

end
