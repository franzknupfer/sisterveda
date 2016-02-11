class Picture < ActiveRecord::Base

  has_attached_file :markdown_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :markdown_image, :content_type => /\Aimage\/.*\Z/

end
