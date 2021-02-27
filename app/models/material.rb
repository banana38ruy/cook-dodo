class Material < ApplicationRecord
  belongs_to :recipe, optional: true
  
  
  
  validates :name, presence: true
  validates :quantity, presence: true
  # validates :material_id, presence: true
  # validates :recipe_id, presence: true
  
end
