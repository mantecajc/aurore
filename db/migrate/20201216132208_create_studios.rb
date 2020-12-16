class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.text :main_description

      t.timestamps
    end
  end
end
