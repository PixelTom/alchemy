class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :element
      t.string :rarity
      t.text :influence
      t.integer :oz
      t.integer :lb

      t.timestamps
    end
  end
end
