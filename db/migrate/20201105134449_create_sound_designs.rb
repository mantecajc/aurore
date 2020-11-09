class CreateSoundDesigns < ActiveRecord::Migration[6.0]
  def change
    create_table :sound_designs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
