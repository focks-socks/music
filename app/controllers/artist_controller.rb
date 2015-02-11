class ArtistController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "application"

  def albums

    @albums = Artist.find(params[:id]).albums
    render json: @albums

  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to :action => "index", :controller => "page"
    else

    end
  end

  def make
    
  end

  def artist_params
      params.require(:artist).permit(:name)
  end

end
