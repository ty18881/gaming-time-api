class AddForeignKeyToProgressReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :progressreports, :user
  end
end
