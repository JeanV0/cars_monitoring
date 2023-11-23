class Dashboard::CamController < ApplicationController
  def show

    render 'dashboard/home'
  end

  private

  def params_cam
    params.require(:cam).permit(:identifier, :password)

  end
end
