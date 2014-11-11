class CreateSubcategorias < ActiveRecord::Migration
  def change
    create_table :subcategorias do |t|
      t.string :titulo
      t.string :slug
      t.integer :posicion
      t.text :descripcion
      t.references :categoria, index: true

      t.timestamps
    end
    add_index :subcategorias, :slug, unique: true
  end
end
