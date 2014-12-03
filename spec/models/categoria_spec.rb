# == Schema Information
#
# Table name: categorias
#
#  id         :integer          not null, primary key
#  titulo     :string(255)
#  slug       :string(255)
#  prioridad  :integer
#  visible    :boolean
#  created_at :datetime
#  updated_at :datetime
#  icon       :string(255)
#  color      :string(255)
#

require 'rails_helper'

RSpec.describe Categoria, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
