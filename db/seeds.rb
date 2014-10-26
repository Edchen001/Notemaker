10.times do
  User.create(name: Faker::Name.name, password: "123")
end

20.times do
  Note.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: User.all.sample.id)
end

