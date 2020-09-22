class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_artist

  def current_artist
    @artist = Artist.find_by(id: params[:song][:artist_id])
  end
end
