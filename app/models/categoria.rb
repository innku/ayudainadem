class Categoria < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
end
