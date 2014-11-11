class AddIconAndColorToCategorias < ActiveRecord::Migration
  def change
    add_column :categorias, :icon, :string
    add_column :categorias, :color, :string
  end
end
