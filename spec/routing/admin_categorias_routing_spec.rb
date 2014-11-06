require "rails_helper"

RSpec.describe Admin::CategoriasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/categorias").to route_to("admin/categorias#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/categorias/new").to route_to("admin/categorias#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/categorias/1").to route_to("admin/categorias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/categorias/1/edit").to route_to("admin/categorias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/categorias").to route_to("admin/categorias#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/categorias/1").to route_to("admin/categorias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/categorias/1").to route_to("admin/categorias#destroy", :id => "1")
    end

  end
end
