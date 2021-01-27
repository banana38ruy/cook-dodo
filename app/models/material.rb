class Material < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :material_name, presence: true
  validates :quantity_name, presence: true
  validates :material_id, presence: true
  validates :recipe_id, presence: true
  
end
