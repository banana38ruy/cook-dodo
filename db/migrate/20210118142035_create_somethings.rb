class CreateSomethings < ActiveRecord::Migration[6.0]
  def change
    create_table :somethings do |t|
      t.string :image

      t.timestamps
    end
  end
end
