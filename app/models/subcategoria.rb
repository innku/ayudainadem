# == Schema Information
#
# Table name: subcategorias
#
#  id           :integer          not null, primary key
#  titulo       :string(255)
#  slug         :string(255)
#  posicion     :integer
#  descripcion  :text
#  categoria_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Subcategoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true
  default_scope ->{ order(:posicion) }
  scope :primeros, ->{ limit(5) }
  belongs_to :categoria
  has_many :articulos, inverse_of: :subcategoria, dependent: :delete_all
  accepts_nested_attributes_for :articulos, allow_destroy: true, reject_if: :all_blank
  def to_s
    titulo
  end
end
