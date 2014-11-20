class ArticulosController < ApplicationController
  respond_to :html, :json
  def index
    @articulos = Articulo.all
    respond_with(@articulos)
  end

  def show
    @articulo = Articulo.friendly.find(params[:id])
    respond_with(@articulo)
  end
end
