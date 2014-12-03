# == Schema Information
#
# Table name: articulos
#
#  id              :integer          not null, primary key
#  titulo          :string(255)
#  posicion        :integer
#  contenido       :text
#  video           :string(255)
#  imagen          :string(255)
#  slug            :string(255)
#  subcategoria_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe Articulo, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
