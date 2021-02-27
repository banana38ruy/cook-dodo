class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.text :content,  null: false
      t.string :cooking_image,  null: true
      t.references :recipe, null: false, foreign_key: true
      t.timestamps
    end
  end
end
