# == Schema Information
#
# Table name: subcategorias
#
#  id           :integer          not null, primary key
#  titulo       :string(255)
#  slug         :string(255)
#  posicion     :integer
#  descripcion  :text
#  categoria_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

FactoryGirl.define do
  factory :subcategoria do
    titulo "Primer Subcategoria"
    slug "primer-subcategoria"
    posicion 1
    descripcion "MyText"
    categoria
  end
end
