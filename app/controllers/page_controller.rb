class PageController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "application"

  def index

  	@artists = Artist.all

  	#@artists<<Artist.create(:id => 1, :name => "David Allen Coe")
  	#@artists<<Artist.create(:id => 2, :name => "Dave Matthews Band")
  	#@artists<<Artist.create(:id => 3, :name => "R.E.M.")

  	#Album.create(:id => 1, :title => 'Out of Time', :artist_id => 3)
  	#Album.create(:id => 2, :title => 'Crash', :artist_id => 2)
  	#Album.create(:id => 3, :title => 'Something Awesome', :artist_id => 1)

  	@albums = Artist.find(1).albums

  end

end
