class Admin::CategoriasController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :xml, :json
  before_action :set_categoria, only: [:show, :edit, :update, :destroy]
  layout 'admin'

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
    redirect_to admin_categoria_path(@categoria)
  end

  def update
    @categoria.update(categoria_params)
    redirect_to admin_categoria_path(@categoria)
  end

  def destroy
    @categoria.destroy
    redirect_to admin_categorias_path
  end

  private
  def set_categoria
    @categoria = Categoria.friendly.find(params[:id])
  end

  def categoria_params
    params.require(:categoria).permit(:titulo, :slug, :prioridad, :visible)
  end
end
