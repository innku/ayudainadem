class SubcategoriasController < ApplicationController
  respond_to :html, :json
  def index
    @subcategorias = Subcategoria.all
    respond_with(@subcategorias)
  end

  def show
    @subcategoria = Subcategoria.friendly.find(params[:id])
    respond_with(@subcategoria)
  end
end
