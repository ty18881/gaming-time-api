# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## seed the database with some initial questions


# create_table "questions", force: :cascade do |t|
#     t.string "operator"
#     t.integer "operand1"
#     t.integer "operand2"
#     t.integer "answer"
#     t.integer "point_value"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


Question.create(operator: 'x', operand1: 4, operand2: 0, answer: 0, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 1, answer: 4, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 2, answer: 8, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 3, answer: 12, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 4, answer: 16, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 5, answer: 20, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 6, answer: 24, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 7, answer: 28, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 8, answer: 32, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 9, answer: 36, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 10, answer: 40, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 11, answer: 44, point_value: 2);
Question.create(operator: 'x', operand1: 4, operand2: 12, answer: 48, point_value: 2);

