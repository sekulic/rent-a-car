class Car < ActiveRecord::Base
  belongs_to :comfort_type
  has_many :rents
  validates_presence_of :name, :description, :comfort_type_id
  validates :photo1, :photo2, :photo3, :attachment_presence => true
  has_attached_file :photo1, :styles => { :medium => "640x480>", :thumb => "160x120>" }
  validates_attachment_content_type :photo1, :content_type => /\Aimage\/.*\Z/            
  has_attached_file :photo2, :styles => { :medium => "640x480>", :thumb => "160x120>" }
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo3, :styles => { :medium => "640x480>", :thumb => "160x120>" }
  validates_attachment_content_type :photo3, :content_type => /\Aimage\/.*\Z/
end
