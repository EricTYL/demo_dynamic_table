# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(name: 'Kristina Schuppe', age: 62, items: { 'item_3'=>'Saxophone', 'item_1'=>'Piano', 'item_4'=>'Accordion' })
Customer.create(name: 'Maudie Goodwin', age: 17, items: { 'item_1'=>'Electric Guitar' })
Customer.create(name: 'Mr. Eda Weimann', age: 96, items: { 'item_1'=>'Saxophone', 'item_2'=>'Piano', 'item_3'=>'Ukelele' })
Customer.create(name: 'Stroman-Lindgren', age: 36, items: { 'item_5'=>'Flute' })
Customer.create(name: 'Bechtelar-Zemlak', age: 33, items: { 'item_4'=>'Harp', 'item_3'=>'Ukelele', 'item_5'=>'Drums' })

100.times do
  Customer.create_fake_data
end
