class Admin::ArticulosController < Admin::BaseController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  def index
    @q = Articulo.includes(:subcategoria).search(params[:q])
    @articulos = @q.result(distinct: true).paginate(page: params[:page])
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

  def search
    index
    render :index
  end

  private
  def set_articulo
    @articulo = Articulo.friendly.find(params[:id])
  end

  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido, :subcategoria_id , :slug)
  end
end
