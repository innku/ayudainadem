module ApplicationHelper
  def ultimos_articulos
    Articulo.ultimos
  end
end
