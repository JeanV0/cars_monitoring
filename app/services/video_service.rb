class VideoService
  def create(video, cam: Cam)
    Video.new.video.attached(
      key: nil,
      io: video.tempfile,
      filename: video.original_filename,
      content_type: video.content_type
    )

    video.save
  end

  def findByCam(cam: Cam)
    Video.find(:all, :condition => {  })
  end
end
