class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:show, :edit, :update, :destroy]

  def index
    @categorias = Categoria.all
    respond_with(@categorias)
  end

  def show
    respond_with(@categoria)
  end

  def new
    @categoria = Categoria.new
    respond_with(@categoria)
  end

  def edit
  end

  def create
    @categoria = Categoria.new(categoria_params)
    @categoria.save
    respond_with(@categoria)
  end

  def update
    @categoria.update(categoria_params)
    respond_with(@categoria)
  end

  def destroy
    @categoria.destroy
    respond_with(@categoria)
  end

  private
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    def categoria_params
      params.require(:categoria).permit(:titulo, :slug, :prioridad, :visible)
    end
end
