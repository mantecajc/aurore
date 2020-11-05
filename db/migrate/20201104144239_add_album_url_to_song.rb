class AddAlbumUrlToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :album_url, :string
  end
end
