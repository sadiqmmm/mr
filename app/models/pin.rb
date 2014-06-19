class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { maximum: 50}
  validates :user_id, presence: true 

  belongs_to :user
end
