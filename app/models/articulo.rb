# == Schema Information
#
# Table name: articulos
#
#  id              :integer          not null, primary key
#  titulo          :string(255)
#  posicion        :integer
#  contenido       :text
#  slug            :string(255)
#  subcategoria_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Articulo < ActiveRecord::Base
  belongs_to :subcategoria
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  scope :primeros, ->{ limit(5) }
  default_scope ->{ order(:posicion) }

  def self.los_ultimos
    unscoped.order(:created_at).limit(10).reverse
  end

  def to_s
    titulo
  end
end
