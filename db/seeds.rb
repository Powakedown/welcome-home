require 'faker'

10.times do
  Category.create(name: Faker::Lorem.word)
end

30.times do
  Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph(5), category: Category.all.sample )
end
