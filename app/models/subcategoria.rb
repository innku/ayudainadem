class Subcategoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  default_scope ->{ order(:posicion) }
  belongs_to :categoria
  def to_s
    titulo
  end
end
