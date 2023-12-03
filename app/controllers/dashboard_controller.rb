class DashboardController < ApplicationController
  before_action :require_login

  def home
    @service = AdminService.new
    @cams = @service.findAllCam

    render :home
  end
end
