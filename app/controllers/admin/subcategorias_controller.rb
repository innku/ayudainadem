class Admin::SubcategoriasController < ApplicationController
  respond_to :html, :json
  before_action :set_subcategoria, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  layout 'admin'

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
    redirect_to admin_subcategoria_path(@subcategoria)
  end

  def update
    @subcategoria.update(subcategoria_params)
    redirect_to admin_subcategoria_path(@subcategoria)
  end

  def destroy
    @subcategoria.destroy
    redirect_to admin_subcategorias_path
  end

  private
    def set_subcategoria
      @subcategoria = Subcategoria.friendly.find(params[:id])
    end

    def subcategoria_params
      params.require(:subcategoria).permit(:titulo, :posicion, :descripcion, :categoria_id)
    end
end
