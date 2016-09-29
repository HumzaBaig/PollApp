# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(user_name: 'jane_hauf')
User.create!(user_name: 'humza_baig')
User.create!(user_name: 'andrew_francisque')

Poll.create!(title: 'favorites', author_id: 1)

Question.create!(text: 'favorite color', poll_id: 1)
Question.create!(text: 'favorite food', poll_id: 1)
Question.create!(text: 'favorite artist', poll_id: 1)

AnswerChoice.create!(question_id: 1, text: "blue")
AnswerChoice.create!(question_id: 1, text: "red")
AnswerChoice.create!(question_id: 1, text: "green")

AnswerChoice.create!(question_id: 2, text: "chinese")
AnswerChoice.create!(question_id: 2, text: "mexican")
AnswerChoice.create!(question_id: 2, text: "italian")

AnswerChoice.create!(question_id: 3, text: "britney")
AnswerChoice.create!(question_id: 3, text: "michael")
AnswerChoice.create!(question_id: 3, text: "prince")

Response.create!(user_id: 2, answer_choice_id: 3)
Response.create!(user_id: 2, answer_choice_id: 4)
Response.create!(user_id: 3, answer_choice_id: 5)
Response.create!(user_id: 3, answer_choice_id: 7)
