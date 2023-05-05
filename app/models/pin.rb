class Pin < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :lat, presence: true, uniqueness: { scope: :lng }
    validates :lng, presence: true
    validates :title, presence: true, length: { maximum: 25 }
    validates :image, presence: true
    validate :image_type, :image_size

    def image_type
        if image.blob
            if !image.blob.content_type.in?(%('image/jpeg image/jpg image/png'))
            image.purge
            errors.add(:image, 'はjpegまたはpng形式でアップロードしてください')
            end
        end
    end
    
    def image_size
        if image.blob
            if image.blob.byte_size > 5.megabytes
            image.purge
            errors.add(:image, "は1つのファイル5MB以内にしてください")
            end
        end
    end
end
