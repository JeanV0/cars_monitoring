class DashboardController < ApplicationController
  def home
    @service = AdminService.new
    @cams = @service.findAllCam

    render :home
  end
end
