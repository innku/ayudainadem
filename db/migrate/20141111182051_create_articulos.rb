class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string  :titulo, index: true
      t.integer :posicion
      t.text    :contenido
      t.string  :video
      t.string  :imagen
      t.string  :slug, index: true, unique: true
      t.references :subcategoria, index: true

      t.timestamps
    end
  end
end
