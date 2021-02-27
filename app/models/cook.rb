class Cook < ApplicationRecord

    belongs_to :recipe, optional: true
    mount_uploader :cooking_image, ImageUploader
end
