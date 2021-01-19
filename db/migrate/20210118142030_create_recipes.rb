class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title,              null: false
      t.text :content,              null: false
      t.string :material_name,      null: false
      t.string :quantity_name    
      t.integer :quantity_id,       null: false
      t.references :user,     foreign_key: true  
      t.string :image        
      t.timestamps
    end
  end
end
