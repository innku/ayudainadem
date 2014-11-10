class Categoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  validates :titulo, presence: true, uniqueness: true
  default_scope ->{ order(:prioridad) }

  scope :disponibles, ->{where(visible: true)}

end
