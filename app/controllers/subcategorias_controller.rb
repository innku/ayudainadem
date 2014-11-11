class SubcategoriasController < ApplicationController
  def index
    @subcategorias = Subcategoria.all
    respond_with(@subcategorias)
  end

  def show
    @subcategoria = Subcategoria.friendly.find(params[:id])
    respond_with(@subcategoria)
  end
end
