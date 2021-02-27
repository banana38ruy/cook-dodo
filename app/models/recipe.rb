class Recipe < ApplicationRecord
   belongs_to :user
   mount_uploader :image, ImageUploader
   has_many :materials,dependent: :destroy
   has_many :cooks, dependent: :destroy
  accepts_nested_attributes_for :materials, allow_destroy: true
  accepts_nested_attributes_for :cooks, allow_destroy: true
  


  validates :title, presence: true
  validates :image, presence: true
  # validates :user, presence: true
end
