class Admin::CategoriasController < Admin::BaseController
  before_action :set_categoria, only: [:show, :edit, :update, :destroy]

  def index
    @categorias = Categoria.includes(:subcategorias).all
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
    if @categoria.save
      respond_with([:admin, @categoria])
    else
      render :new
    end
  end

  def update
    if @categoria.update(categoria_params)
      respond_with([:admin, @categoria])
    else
      render :edit
    end
  end

  def destroy
    @categoria.destroy
    respond_with([:admin, @categoria])
  end

  private
  def set_categoria
    @categoria = Categoria.friendly.find(params[:id])
  end

  def categoria_params
    params.require(:categoria).permit(:titulo, :slug, :prioridad, :visible, subcategorias_attributes: [:id, :titulo, :posicion, :descripcion])
  end
end
