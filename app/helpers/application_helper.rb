module ApplicationHelper
  def ultimos_articulos
    Articulo.includes(:subcategoria).los_ultimos
  end
end
