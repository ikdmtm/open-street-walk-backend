class Pin < ApplicationRecord
    belongs_to :user
    validates :lat, presence: true, uniqueness: { scope: :lng }
    validates :lng, presence: true
    validates :title, presence: true, length: { maximum: 25 }
    validates :image, presence: true
    has_one_attached :image
    
end
