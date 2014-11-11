json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :titulo, :contenido, :subcategoria, :video, :imagen, :slug
  json.url articulo_url(articulo, format: :json)
end
