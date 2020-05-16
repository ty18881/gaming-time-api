class AddForeignKeyToParent < ActiveRecord::Migration[6.0]
  def change
    add_reference :parents, :user
  end
end
