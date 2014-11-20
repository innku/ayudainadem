class Articulo < ActiveRecord::Base
  belongs_to :subcategoria
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  scope :primeros, ->{ limit(5) }
  default_scope ->{ order(:posicion) }

  def self.los_ultimos
    unscoped.order(:created_at).limit(10)
  end

  def to_s
    titulo
  end
end
