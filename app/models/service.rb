class Service < ActiveRecord::Base

  attr_accessor :delete_image
  before_validation { attached_image.clear if delete_image === '1' }

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/

end
