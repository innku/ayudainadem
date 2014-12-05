class Admin::SubcategoriasController < Admin::BaseController
  before_action :set_subcategoria, only: [:show, :edit, :update, :destroy]

  def index
    @q = Subcategoria.includes(:categoria).search(params[:q])
    @subcategorias = @q.result(distinct: true).paginate(page: params[:page])
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
    if @subcategoria.save
      respond_with([:admin, @subcategoria])
    else
      render :new
    end
  end

  def update
    if @subcategoria.update(subcategoria_params)
      respond_with([:admin, @subcategoria])
    else
      render :edit
    end
  end

  def destroy
    @subcategoria.destroy
    respond_with([:admin, @subcategoria])
  end

  def search
    index
    render :index
  end

  private
  def set_subcategoria
    @subcategoria = Subcategoria.friendly.find(params[:id])
  end

  def subcategoria_params
    params.require(:subcategoria).permit(:titulo, :posicion, :descripcion, :categoria_id)
  end
end
