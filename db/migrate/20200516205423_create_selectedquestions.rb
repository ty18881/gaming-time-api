class CreateSelectedquestions < ActiveRecord::Migration[6.0]
  def change
    create_table :selectedquestions do |t|
      t.boolean :answered
      t.boolean :answered_c
      t.boolean :answered_w

      t.timestamps
    end
  end
end
