class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :operator
      t.integer :operand1
      t.integer :operand2
      t.integer :answer
      t.integer :point_value

      t.timestamps
    end
  end
end
