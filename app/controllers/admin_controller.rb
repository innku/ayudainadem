class AdminController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin'
  def index
    @categorias = Categoria.all
    @subcategorias = Subcategoria.all
    @articulos = Articulo.all
  end
end
