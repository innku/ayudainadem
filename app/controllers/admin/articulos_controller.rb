class Admin::ArticulosController < Admin::BaseController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  def index
    @articulos = Articulo.all
    respond_with(@articulos)
  end

  def show
    respond_with(@articulo)
  end

  def new
    @articulo = Articulo.new
    respond_with([:admin, @articulo])
  end

  def edit
  end

  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      respond_with([:admin, @articulo])
    else
      render :new
    end
  end

  def update
    if @articulo.update(articulo_params)
      respond_with([:admin, @articulo])
    else
      render :edit
    end
  end

  def destroy
    @articulo.destroy
    respond_with([:admin, @articulo])
  end

  private
  def set_articulo
    @articulo = Articulo.friendly.find(params[:id])
  end

  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido, :subcategoria, :video, :imagen, :slug)
  end
end
