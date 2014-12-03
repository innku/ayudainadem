class RemoveColumnsFromArticulos < ActiveRecord::Migration
  def change
    remove_column :articulos, :video, :string
    remove_column :articulos, :imagen, :string
  end
end
