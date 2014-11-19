class Categoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  has_many :subcategorias, inverse_of: :categoria
  validates :titulo, presence: true, uniqueness: true
  default_scope ->{ order(:prioridad) }

  scope :disponibles, ->{where(visible: true)}

  def to_s
    titulo
  end
end
