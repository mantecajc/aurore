class CreateVimeos < ActiveRecord::Migration[6.0]
  def change
    create_table :vimeos do |t|
      t.string :vimeo_url
      t.integer :sound_design_id

      t.timestamps
    end
  end
end
