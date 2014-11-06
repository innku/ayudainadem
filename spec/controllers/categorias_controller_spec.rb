require 'rails_helper'
RSpec.describe CategoriasController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all categorias as @categorias" do
      categoria = Categoria.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:categorias)).to eq([categoria])
    end
  end

  describe "GET show" do
    it "assigns the requested categoria as @categoria" do
      categoria = Categoria.create! valid_attributes
      get :show, {:id => categoria.to_param}, valid_session
      expect(assigns(:categoria)).to eq(categoria)
    end
  end
end
