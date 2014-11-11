json.array!(@subcategorias) do |subcategoria|
  json.extract! subcategoria, :id, :titulo, :posicion, :descripcion, :categoria_id
  json.url subcategoria_url(subcategoria, format: :json)
end
