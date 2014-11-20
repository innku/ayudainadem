module ApplicationHelper
  def ultimos_articulos
    Articulo.all.limit(10)
  end
end
