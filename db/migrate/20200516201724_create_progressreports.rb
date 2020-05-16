class CreateProgressreports < ActiveRecord::Migration[6.0]
  def change
    create_table :progressreports do |t|
      t.date :date
      t.integer :time_earned

      t.timestamps
    end
  end
end
