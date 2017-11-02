class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :location
      t.string :planet
      t.float :au

      t.timestamps
    end
  end
end
