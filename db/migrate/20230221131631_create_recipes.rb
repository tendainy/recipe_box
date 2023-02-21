class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.integer :rating
      t.text :ingredients

      t.timestamps
    end
  end
end
