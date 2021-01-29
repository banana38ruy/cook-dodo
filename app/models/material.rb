class Material < ApplicationRecord
  belongs_to :recipe, optional: true
  has_many :cooks,dependent: :destroy
  
  accepts_nested_attributes_for :cooks, allow_destroy: true
  validates :material_name, presence: true
  validates :quantity_name, presence: true
  # validates :material_id, presence: true
  # validates :recipe_id, presence: true
  
end
