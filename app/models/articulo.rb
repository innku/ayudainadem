class Articulo < ActiveRecord::Base
  belongs_to :subcategoria
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  scope :primeros, ->{ limit(5) }
  scope :ultimos, ->{ limit(10) }
  default_scope ->{ order(:posicion) }
  def to_s
    titulo
  end
end
