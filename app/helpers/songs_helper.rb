module SongsHelper
    def form_url_helper(artist, song)
        #if artist id exists --> edit (make to nested artist/1/songs/id/edit)
        if artist 
            #if song id exists
            if !song.id.blank? 
                artist_song_path(artist, song)
            else 
            #if song doesn't exist
                artist_songs_path(artist) 
            end
        else
        #if artist id not exit --> new 
         songs_path 
        end
    end
end
