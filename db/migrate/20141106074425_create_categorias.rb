class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :titulo
      t.string :slug
      t.integer :prioridad
      t.boolean :visible

      t.timestamps
    end
    add_index :categorias, :slug, unique: true
  end
end
