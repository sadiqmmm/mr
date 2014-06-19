class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  belongs_to :user
   
  has_attached_file :image,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "320x240>" }
  
  validates_attachment :image,
  											presence: true,
  											content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  											size: { less_than: 5.megabytes }
  

  validates :description, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true  
end
