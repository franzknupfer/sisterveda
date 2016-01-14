class Practitioner < ActiveRecord::Base

  validates :name, :presence => true

  def full_address
    "#{address}, Portland, OR"
  end

  geocoded_by :full_address
  after_validation :geocode

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :background_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :background_image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
