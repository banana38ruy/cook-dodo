class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.string :content,  null: false
      t.text :cooking_image,  null: true

      t.references :material, null: false, foreign_key: true
      t.timestamps
    end
  end
end
