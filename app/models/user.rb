class User < ActiveRecord::Base
  rolify

  ROLES = %w(admin agente emprendedor)

  devise :database_authenticatable, :registerable,#, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :default_role

  def printable_roles
    roles.collect{|a| a.name}.join(', ')
  end
  private
  def default_role
    self.add_role :emprendedor
  end
end
