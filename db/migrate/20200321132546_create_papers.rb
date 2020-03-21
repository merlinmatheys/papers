class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.string :color
      t.integer :layers
      t.string :pattern
      t.integer :sweetness

      t.timestamps
    end
  end
end
