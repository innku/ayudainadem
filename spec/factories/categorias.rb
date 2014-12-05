# == Schema Information
#
# Table name: categorias
#
#  id         :integer          not null, primary key
#  titulo     :string(255)
#  slug       :string(255)
#  prioridad  :integer
#  visible    :boolean
#  created_at :datetime
#  updated_at :datetime
#  icon       :string(255)
#  color      :string(255)
#

FactoryGirl.define do
  factory :categoria do
    titulo "Primer Convocatoria"
    slug "primer-convocatoria"
    prioridad 1
    visible true
  end
end
