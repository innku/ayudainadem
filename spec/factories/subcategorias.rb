FactoryGirl.define do
  factory :subcategoria do
    titulo "Primer Subcategoria"
    slug "primer-subcategoria"
    posicion 1
    descripcion "MyText"
    categoria
  end
end
