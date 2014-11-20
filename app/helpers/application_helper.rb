module ApplicationHelper
  def ultimos_articulos
    Articulo.includes(:subcategoria).los_ultimos
  end
  def todas_categorias
    Categoria.all
  end
end
