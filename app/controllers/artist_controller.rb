class ArtistController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def albums

    @albums = Artist.find(params[:id]).albums
    render json: @albums

  end

end
