class CreatePokemons < ActiveRecord::Migration[6.0]

  def change
    create_table :pokemons do |t|
      t.integer :pokedex_id
      t.string :name
      t.integer :base_exp
      t.integer :height
      t.integer :weight
      t.integer :order
      t.json :abilities
      t.json :sprites
      t.json :stats
      t.json :types
      
    end
  end
end
