class CreateRydes < ActiveRecord::Migration[5.1]
  def change
    create_table :rydes do |t|
      t.string :starting_location
      t.string :ending_location
      t.string :pilot_id
      t.boolean :finished
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
