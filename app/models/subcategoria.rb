class Subcategoria < ActiveRecord::Base
  belongs_to :categoria, inverse_of: :subcategoria
end
