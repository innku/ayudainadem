require 'rails_helper'

RSpec.describe ArticulosController, :type => :controller do
  let(:articulo) {Factory.create :articulo}

  describe "GET index" do
    it "assigns all articulos as @articulos" do
      articulo = Articulo.create! valid_attributes
      get :index
      expect(assigns(:articulos)).to eq([articulo])
    end
  end

  describe "GET show" do
    it "assigns the requested articulo as @articulo" do
      get :show, {:id => :articulo.to_param}
      expect(assigns(:articulo)).to eq(articulo)
    end
  end
end
