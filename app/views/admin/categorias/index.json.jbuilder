json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :titulo, :slug, :prioridad, :visible
  json.url categoria_url(categoria, format: :json)
end
