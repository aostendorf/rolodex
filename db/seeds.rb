gender = ["male", "female"]
note = ["Cool", "Awesome", "Great", "Fun", "Smart"]

25.times do
  Person.create(
    name: Faker::Name.name,
    age: Faker::Number.number(2),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: gender.sample,
    alive: Faker::Boolean.boolean
  )
  Note.create(
    body: note.sample
  )
end