module ApplicationHelper
  def ultimos_articulos
    Articulo.ultimos
  end
  def todas_categorias
    Categoria.all
  end
end
