# == Schema Information
#
# Table name: articulos
#
#  id              :integer          not null, primary key
#  titulo          :string(255)
#  posicion        :integer
#  contenido       :text
#  video           :string(255)
#  imagen          :string(255)
#  slug            :string(255)
#  subcategoria_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :articulo do
    titulo "Primer Articulo"
    contenido "Uno de los mejores articulos"
    slug "primer-articulo"
    video "MyString"
    imagen "MyString"
    subcategoria
  end
end
