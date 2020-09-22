module SongsHelper
    def form_url_helper(artist)
        artist ? artist_songs_path(artist) : songs_path 
    end
end
