class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :location
      t.boolean :guessed, :default => false
      t.string :button_class, :default => "button"
      t.timestamps
    end
  end
end
