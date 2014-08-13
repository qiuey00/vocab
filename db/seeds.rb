# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create!(username: 'nick_marden', first_name: 'Nick', last_name: 'Marden')
j = Player.create!(username: 'qiuey00', first_name: 'Jeff', last_name: 'Qiu')

w1 = Word.create!(word: 'annul', definition: 'To void or eliminate', part_of_speech: 'verb')
w2 = Word.create!(word: 'bishop', definition: 'Religious leader below the Pope', part_of_speech: 'noun')
w3 = Word.create!(word: 'cat', definition: 'Meow', part_of_speech: 'noun')

g = Game.create!(player: j)

q = Question.create!(game: g)

Answer.create!(question: q, word: w1, word_location: 0, is_correct_answer: false)
Answer.create!(question: q, word: w2, word_location: 1, is_correct_answer: true)
Answer.create!(question: q, word: w3, word_location: 2, is_correct_answer: false)
