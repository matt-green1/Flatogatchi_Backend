# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##branbdon w as here

User.destroy_all
Monster.destroy_all
UserMonster.destroy_all


user1 = User.create(name: 'Michael', email: "michael@gmail.com")
user2 = User.create(name: 'Rachel', email: "rachel@gmail.com")
user3 = User.create(name: 'Todd', email: "todd@gmail.com")
user4 = User.create(name: 'Patrick Ewing', email: "pe@gmail.com")

monster = Monster.create(monster_theme: "Cute", image_url:"https://i.pinimg.com/originals/e3/95/bc/e395bc2aff10f0b95775360b746f6343.png", message: " likes cuddling and all things fuzzy.")
monster2 = Monster.create(monster_theme: "Cool", image_url:"./cool_monster.png", message: " was voted most popular monster ten years in a row.")
monster3 = Monster.create(monster_theme: "Scary", image_url:"https://vignette.wikia.nocookie.net/marvelvscapcom/images/3/38/Firebrand_MvCI_render.png/revision/latest?cb=20170822114024", message: " once made a whole highschool cry with one look.")


#"https://vignette.wikia.nocookie.net/pixar/images/a/af/Johnny_Worthington_III.png/revision/latest?cb=20130808225542"

user_monster = UserMonster.create(hunger_level: 100, happiness: 78, power: 59, user: user1, monster: monster, name: "Scooby")
user_monster2 = UserMonster.create(hunger_level: 80, happiness: 72, power: 69, user: user2, monster: monster2, name: "Fred")
user_monster3 = UserMonster.create(hunger_level: 90, happiness: 88, power: 79, user: user3, monster: monster3, name: "Shaggy")


