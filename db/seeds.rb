# 20.times do
#   User.create(name: Faker::Name.first_name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: "123")
# end

User.create(name: "John", email: "fake@fake.com", username: "john123", password: "123")
User.create(name: "Paul", email: "fake1@fake.com", username: "paul123", password: "123")
User.create(name: "George", email: "fake2@fake.com", username: "george123", password: "123")
User.create(name: "Ringo", email: "fake3@fake.com", username: "ringo123", password: "123")


# 50.times do
#   Recipe.create(name: Faker::Lorem.word, ingredients: Faker::Lorem.sentence, directions: Faker::Lorem.paragraph, author: User.all.sample)
# end

Recipe.create(name: "Apple Pie", ingredients: "brown sugar, pie crust, apples", directions: "Cut up apples, layer with sugar over pie crust, cover with pie crust, enjoy. Bake at a high temperature for a while.", author: User.find(1))
Recipe.create(name: "Corn on the Cob", ingredients: "corn", directions: "Husk the corn, drop in boiling water for 1 minute. Add sugar to water prior to boiling if desired.", author: User.find(2))
Recipe.create(name: "Pigs in a Blanket", ingredients: "mini hot dogs, filo dough", directions: "Wrap mini hotdogs in filo dough, bake in oven for a bit.", author: User.find(3))
Recipe.create(name: "Steak in a Skillet", ingredients: "filet mignon, butter", directions: "Sear steak for four minutes in cast iron skillet, flip, sear another 2 minutes, put in preheated oven for 4 additional minutes, drop a pat of butter on top.", author: User.find(4))
Recipe.create(name: "Whiskey Ginger", ingredients: "whiskey, ginger ale", directions: "Mix the whiskey and the ginger ale to your liking.", author: User.find(1))


Tag.create(name: "Entree")
Tag.create(name: "Appetizer")
Tag.create(name: "Side dish")
Tag.create(name: "Dessert")
Tag.create(name: "Cocktail")

Recipe.all.each do |recipe|
  RecipeTag.create(recipe_id: 1, tag_id: 4)
  RecipeTag.create(recipe_id: 2, tag_id: 3)
  RecipeTag.create(recipe_id: 3, tag_id: 2)
  RecipeTag.create(recipe_id: 4, tag_id: 1)
  RecipeTag.create(recipe_id: 5, tag_id: 5)
end

