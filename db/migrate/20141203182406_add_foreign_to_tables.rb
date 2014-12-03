class AddForeignToTables < ActiveRecord::Migration
  def change
    add_foreign_key(:subcategorias, :categorias)
    add_foreign_key(:articulos, :subcategorias)
  end
end
