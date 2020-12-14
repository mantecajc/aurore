class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.text :main_description
      t.text :sub_description

      t.timestamps
    end
  end
end
