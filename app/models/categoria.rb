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

class Categoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  has_many :subcategorias, inverse_of: :categoria
  has_many :articulos, through: :subcategoria
  accepts_nested_attributes_for :subcategorias, allow_destroy: true, reject_if: :all_blank

  validates :titulo, presence: true, uniqueness: true
  default_scope ->{ order(:prioridad) }

  scope :disponibles, ->{where(visible: true)}

  def to_s
    titulo
  end
end
