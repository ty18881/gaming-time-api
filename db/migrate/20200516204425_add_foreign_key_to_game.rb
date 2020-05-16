class AddForeignKeyToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :progressreport
  end
end
