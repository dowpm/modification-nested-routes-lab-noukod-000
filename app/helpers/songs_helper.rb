module SongsHelper
  def artist_select artist, song
    if artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      #hidden_field_tag "song[artist_id]", song.artist_id
      text_field_tag "song[artist_id]","song[artist_id]", disabled: true
    end
  end
end
