class Subcategoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  default_scope ->{ order(:posicion) }
  belongs_to :categoria
  has_many :articulos
  def to_s
    titulo
  end
end
