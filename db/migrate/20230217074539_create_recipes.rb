class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.text :ingredients
      t.integer :ratings

      t.timestamps
    end
  end
end
