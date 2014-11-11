class SubcategoriasController < ApplicationController
  before_action :set_subcategoria, only: [:show, :edit, :update, :destroy]

  def index
    @subcategorias = Subcategoria.all
    respond_with(@subcategorias)
  end

  def show
    respond_with(@subcategoria)
  end

  def new
    @subcategoria = Subcategoria.new
    respond_with(@subcategoria)
  end

  def edit
  end

  def create
    @subcategoria = Subcategoria.new(subcategoria_params)
    @subcategoria.save
    respond_with(@subcategoria)
  end

  def update
    @subcategoria.update(subcategoria_params)
    respond_with(@subcategoria)
  end

  def destroy
    @subcategoria.destroy
    respond_with(@subcategoria)
  end

  private
    def set_subcategoria
      @subcategoria = Subcategoria.find(params[:id])
    end

    def subcategoria_params
      params.require(:subcategoria).permit(:titulo, :posicion, :descripcion, :categoria_id)
    end
end
