class Articulo < ActiveRecord::Base
  belongs_to :subcategoria
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  default_scope ->{ order(:posicion) }
  def to_s
    titulo
  end
end
