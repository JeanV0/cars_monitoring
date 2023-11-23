class Api::VideoController < ApiController
  before_action :authorize_request

  def new
    file_blob = ActiveStorage::Blob.create_and_upload!(
      key: nil,
      io: params[:video].tempfile,
      filename: params[:video].original_filename,
      content_type: params[:video].content_type
    )
    file_blob.save!

    render json: { file_url: url_for(file_blob), blob_key: file_blob.key, blob_id: file_blob.id }

  end
end
