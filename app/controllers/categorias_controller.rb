class CategoriasController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @categorias = Categoria.all
    respond_with(@categorias)
  end

  def show
    @categoria = Categoria.friendly.find(params[:id])
    respond_with(@categoria)
  end
end
