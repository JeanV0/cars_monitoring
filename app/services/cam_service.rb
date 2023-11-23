class CamService
  def create(id, pass, confirmation)
    @user = Cam.create(identifier: id, password: pass, password_confirmation: pass, status: false)
    @user.save
  end

  def login(id,pass)
      @user = Cam.find_by(identifier: id).authenticate(pass)

      ['hash': JsonWebToken.new.encode(user_id: @user.id)]
  end
end
