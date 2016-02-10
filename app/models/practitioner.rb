class Practitioner < ActiveRecord::Base

  attr_accessor :delete_attached_image
  attr_accessor :delete_background_image
  attr_accessor :delete_logo

  before_validation { attached_image.clear if delete_attached_image === '1' }

  before_validation { background_image.clear if delete_background_image === '1' }

  before_validation { logo.clear if delete_logo === '1' }

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
