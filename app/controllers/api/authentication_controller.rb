class Api::AuthenticationController
  before_action :authorize_request, only: [:on, :off, :register]

  def login
    cam = params_cam
    CamService.new.login(cam.identifier, cam.password)
  end

  def register
    cam = register_params_cam
    CamService.new.create(cam.identifier, cam.password, cam.confirmation)
  end

  def on
    @current_user.status(true)
    render status: :ok
  end

  def off
    @current_user.status(false)
    render status: :ok
  end

  private
  def params_cam
    params.require(:cam).permit(:identifier, :password)
  end

  def register_params_cam
    params.require(:cam).permit(:identifier, :password, :confirmation)
  end


end
