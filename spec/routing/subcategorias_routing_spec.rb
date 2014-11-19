require "rails_helper"

RSpec.describe SubcategoriasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subcategorias").to route_to("subcategorias#index")
    end

    it "routes to #new" do
      expect(:get => "/subcategorias/new").to route_to("subcategorias#new")
    end

    it "routes to #show" do
      expect(:get => "/subcategorias/1").to route_to("subcategorias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subcategorias/1/edit").to route_to("subcategorias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subcategorias").to route_to("subcategorias#create")
    end

    it "routes to #update" do
      expect(:put => "/subcategorias/1").to route_to("subcategorias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subcategorias/1").to route_to("subcategorias#destroy", :id => "1")
    end

  end
end
