class Recipe < ApplicationRecord
   with_options presence: true do
      validates :content, :material_name, :title
  end

  belongs_to :user
 
  mount_uploader :image, ImageUploader
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :quantity

  

end
