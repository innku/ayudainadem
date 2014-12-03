module ApplicationHelper
  def ultimos_articulos
    Articulo.los_ultimos
  end
  def todas_categorias
    Categoria.all
  end
end
