# require 'faker'
# User.destroy_all
#
# 10.times do |index|
#   exuser = User.create(first_name: Faker::Name.name)
#   user.email = "#{user.first_name}@yopmail.com" #les emails utilisateurs restent vides dan ma base
# end

require 'faker'

Faker::Config.locale = 'fr'

User.destroy_all
Event.destroy_all
Participation.destroy_all


#Création de Users

30.times do
    User.create(email: Faker::Internet.email, password: 'azerty', description: Faker::Lorem.paragraph(sentence_count: 2), description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Création d'Events

10.times do
    Event.create(start_date: Faker::Date.forward(days: 23), duration: 5*rand(1..1000),description: Faker::Lorem.paragraph(sentence_count: 5), title: Faker::Quotes::Shakespeare.king_richard_iii_quote, price: Faker::Number.within(range: 1..100), location: Faker::Address.city, admin_id: User.all.sample.id)
end

#Créer des Participations
30.times do
    Participation.create(attendee_id: User.all.sample.id, event_id: Event.all.sample.id)
end
