module AdminHelper
  def total_categorias
    Categoria.all.count
  end
  def total_subcategorias
    Subcategoria.all.count
  end
  def total_articulos
    Articulo.all.count
  end
end
