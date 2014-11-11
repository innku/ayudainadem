class RegistrationsController < Devise::RegistrationsController
  layout 'admin'

  def new
    flash[:info] = 'No tenemos registros disponibles'
    redirect_to root_path
  end

  def create
    flash[:info] = 'No tenemos registros disponibles'
    redirect_to root_path
  end
end
