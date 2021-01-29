class Cook < ApplicationRecord

    belongs_to :material, optional: true
    mount_uploader :cooking_image, ImageUploader
end
