namespace :db do
  desc 'fill database Categoria, Subcategoria y Articulos'
  task :populate => :environment do
    require 'populator'
    require 'faker'

    Categoria.populate 10 do |categoria|
      categoria.titulo = Populator.words(1..3).titleize
      categoria.visible = true
      Subcategoria.populate 1..5 do |subcategoria|
        subcategoria.categoria_id = categoria.id
        subcategoria.titulo = Populator.words(1..5).titleize
        subcategoria.descripcion = Populator.sentences(1..3)
        subcategoria.posicion = rand(1..4)
        Articulo.populate 1..10 do |articulo|
          articulo.subcategoria_id = subcategoria.id
          articulo.titulo = Populator.words(1..5)
          articulo.contenido = Populator.paragraphs(1..15)
        end
      end
    end
    Categoria.find_each(&:save)
    Subcategoria.find_each(&:save)
    Articulo.find_each(&:save)
  end
end
