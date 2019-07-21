# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email: "sah232@hotmail.com", password: "432dse2d", name: "Sulaiman", phone: "34325223", city: "Riyadh" )
user2 = User.create(email: "jfdj33@hotmail.com", password: "dfwed3dd", name: "Badur", phone: "3453522", city: "Riyadh" )
user3 = User.create(email: "fdge55@hotmail.com", password: "fdfdf3fg", name: "Nasser", phone: "3452345", city: "Riyadh" )

item1_user1 = Item.create(name: "TV", loaned: false, user_id: user1.id )
item2_user1 = Item.create(name: "Microwave", loaned: false, user_id: user1.id )

loan1_user2 = Loan.create(status: "pending", user_id: user2.id, item_id: item1_user1.id )
loan2_user2 = Loan.create(status: "pending", user_id: user2.id, item_id: item2_user1.id )