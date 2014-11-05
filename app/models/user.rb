class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable, #:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :default_role

  private
  def default_role
    self.add_role :emprendedor
  end
end
