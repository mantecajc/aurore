class CreateIframes < ActiveRecord::Migration[6.0]
  def change
    create_table :iframes do |t|
      t.string :iframe_url
      t.integer :song_id

      t.timestamps
    end
  end
end
