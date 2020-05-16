class AddForeignKeyToSelectedQuestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :selectedquestions, :game
  end
end
