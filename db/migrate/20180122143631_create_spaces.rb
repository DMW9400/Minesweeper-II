class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.integer :grid_id
      t.string :location
      t.boolean :bomb
      t.boolean :guessed, :default => false
      t.string :button_class, :default => "button"
      t.timestamps
    end
  end
end
