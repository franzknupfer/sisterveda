class Service < ActiveRecord::Base

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/

end
