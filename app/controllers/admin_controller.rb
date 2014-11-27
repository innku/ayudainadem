class AdminController < ApplicationController
  layout 'admin'
  before_filter :authenticate_user!
  before_filter :verify_admin

  def index
    @categorias = Categoria.all
    @subcategorias = Subcategoria.all
    @articulos = Articulo.all
  end

  private
  def verify_admin
    redirect_to root_url unless current_user.has_role? :admin
  end
end
