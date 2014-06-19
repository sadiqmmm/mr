class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  belongs_to :user
  has_attached_file :image, :style => { :medium => "320x240>", :thumb => "100x100>" }
  
  validates_attachment :image,
  											presence: true,
  											content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  											size: { less_than: 5.megabytes }


  validates :description, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true 

  
end
