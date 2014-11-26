require 'rails_helper'
RSpec.describe SubcategoriasController, :type => :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all subcategorias as @subcategorias" do
      subcategoria = Subcategoria.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:subcategorias)).to eq([subcategoria])
    end
  end

  describe "GET show" do
    it "assigns the requested subcategoria as @subcategoria" do
      subcategoria = Subcategoria.create! valid_attributes
      get :show, {:id => subcategoria.to_param}, valid_session
      expect(assigns(:subcategoria)).to eq(subcategoria)
    end
  end
end
