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

require 'rails_helper'

RSpec.describe Subcategoria, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
