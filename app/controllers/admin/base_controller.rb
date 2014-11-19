module Admin
  class BaseController < ApplicationController
    before_filter :authenticate_user!
    respond_to :html, :xml, :json
    layout 'admin'
  end
end
