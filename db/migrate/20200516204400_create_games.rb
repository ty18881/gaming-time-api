class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.date :date
      t.integer :num_correct
      t.integer :num_wrong
      t.string :status

      t.timestamps
    end
  end
end
