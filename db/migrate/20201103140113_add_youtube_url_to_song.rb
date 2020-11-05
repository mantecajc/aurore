class AddYoutubeUrlToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :youtube_url, :string
  end
end
