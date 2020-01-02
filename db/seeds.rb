# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Destroying All Data"
User.destroy_all 
Favorite.destroy_all 
Order.destroy_all 
OrderItem.destroy_all 
Item.destroy_all 



puts "Creating Data "


User.create(email_address: "ADMIN", password_digest: BCrypt::Password.create('password'), first_name: "", last_name: "", phone_number: "")
User.create()
User.create(email_address: "jonathantan@brandeis.edu", password_digest: BCrypt::Password.create('password'), first_name: "Jon", last_name: "Tan", phone_number: "781-296-7750")
User.create(email_address: "test@gmail.com", password_digest: BCrypt::Password.create('password'), first_name: "Mary", last_name: "Farner", phone_number: "781-888-1819")

Item.create(name: "Buffalo Exchange", description: " Set of 6. Served with Roqfuefort Dip. Filled with our buffalo pulled chicken, celery, tarragon ", price: 850, image:"https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )
Item.create(name: "The Traditional", description: "  Set of 6. Served with traditional soy-vinegar dipping sauce . Filled with pork, chive, napa cabbage, and shitake mushroom", price: 750, image: "https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )
Item.create(name: "Italiano", description: "Like a ravioli but not. Set of 6. Finished in a brown butter sage sauce. Filled with our ricotta, roasted shiitake mushroom, and lots of parmasan (Veg) ", price: 850, image:'https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'  )
Item.create(name: "Kimchi Tofu", description: " Set of 6. Served with traditional soy-vinegar dipping sauce. Filled with tofu, glass noodles, kimchi, and beansprouts (Vegan) ", price: 750, image: "https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )

Order.create(user_id: 3, total_price: 800, subtotal: 800,  created_at: "2019-1-31 18:18:59")
Order.create(user_id: 3, total_price: 818, subtotal: 800,  created_at: "2019-2-31 18:18:59")
Order.create(user_id: 3, total_price: 750, subtotal: 800,  created_at: "2019-3-31 18:18:59")
Order.create(user_id: 3, total_price: 818, subtotal: 800,  created_at: "2019-4-31 18:18:59")
Order.create(user_id: 3, total_price: 728, subtotal: 800,  created_at: "2019-5-31 18:18:59")
Order.create(user_id: 3, total_price: 908, subtotal: 800,  created_at: "2019-6-31 18:18:59")
Order.create(user_id: 3, total_price: 1080, subtotal: 800,  created_at: "2019-7-31 18:18:59")
Order.create(user_id: 3, total_price: 818, subtotal: 800,  created_at: "2019-11-31 18:18:59")
Order.create(user_id: 2, total_price: 1000, subtotal: 800,  created_at: "2019-11-30 18:18:59")
Order.create(user_id: 1, total_price: 818, subtotal: 800,  created_at: "2019-1-15 18:18:59")
Order.create(user_id: 1, total_price: 690, subtotal: 800,  created_at: "2019-2-14 18:18:59")
Order.create(user_id: 1, total_price: 900, subtotal: 800,  created_at: "2019-8-13 18:18:59")
Order.create(user_id: 1, total_price: 8918, subtotal: 800,  created_at: "2019-8-12 18:18:59")
Order.create(user_id: 1, total_price: 108, subtotal: 800,  created_at: "2019-8-11 18:18:59")
Order.create(user_id: 1, total_price: 818, subtotal: 800,  created_at: "2019-4-11 18:18:59")
Order.create(user_id: 1, total_price: 2100, subtotal: 800,  created_at: "2019-8-11 18:18:59")
Order.create(user_id: 1, total_price: 3000, subtotal: 800,  created_at: "2019-4-11 18:18:59")
Order.create(user_id: 1, total_price: 2800, subtotal: 800,  created_at: "2019-8-11 18:18:59")
Order.create(user_id: 2, total_price: 900, subtotal: 889,created_at: "2019-1-11 18:18:59" )
Order.create(user_id: 2, total_price: 3000, subtotal: 889,created_at: "2019-1-11 18:18:59")
Order.create(user_id: 1, total_price: 1100, subtotal: 889,created_at: "2019-1-11 18:18:59")
Order.create(user_id: 1, total_price: 2000, subtotal: 994,created_at: "2019-5-11 18:18:59")
Order.create(user_id: 2, total_price: 4500, subtotal: 889,created_at: "2019-4-11 18:18:59")
Order.create(user_id: 2, total_price: 400, subtotal: 889,created_at: "2019-3-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-8-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-9-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-11-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-11-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-7-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-7-11 18:18:59")
Order.create(user_id: 2, total_price: 2800, subtotal: 889,created_at: "2019-7-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-6-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-6-11 18:18:59")
Order.create(user_id: 2, total_price: 2800, subtotal: 889,created_at: "2019-6-11 18:18:59")
Order.create(user_id: 2, total_price: 500, subtotal: 889,created_at: "2019-9-11 18:18:59")
Order.create(user_id: 1, total_price: 500, subtotal: 889,created_at: "2019-9-11 18:18:59")
Order.create(user_id: 1, total_price: 1200, subtotal: 889)
Order.create(user_id: 2, total_price: 500, subtotal: 889)
Order.create(user_id: 2, total_price: 1200, subtotal: 889)
Order.create(user_id: 2, total_price: 500, subtotal: 889)
Order.create(user_id: 2, total_price: 1900, subtotal: 889)
Order.create(user_id: 2, total_price: 2800, subtotal: 889)
Order.create(user_id: 2, total_price: 500, subtotal: 889)
Order.create(user_id: 2, total_price: 1900, subtotal: 889)
Order.create(user_id: 2, total_price: 500, subtotal: 889)

OrderItem.create(order_id: 1,item_id: 1, quantity: 2 ) 
OrderItem.create(order_id: 2,item_id: 2, quantity: 1 ) 
OrderItem.create(order_id: 1,item_id: 3, quantity: 3 ) 
OrderItem.create(order_id: 4,item_id: 4, quantity: 2 ) 
OrderItem.create(order_id: 5,item_id: 2, quantity: 2 ) 
OrderItem.create(order_id: 6,item_id: 1, quantity: 1 ) 
OrderItem.create(order_id: 7,item_id: 2, quantity: 1 ) 
OrderItem.create(order_id: 8,item_id: 2, quantity: 3 ) 
OrderItem.create(order_id: 1,item_id: 3, quantity: 1 ) 
OrderItem.create(order_id: 9,item_id: 3, quantity: 4 ) 
OrderItem.create(order_id: 1,item_id: 2, quantity: 1 ) 
OrderItem.create(order_id: 10,item_id:2, quantity: 2 ) 
OrderItem.create(order_id: 1,item_id: 2, quantity: 1 ) 
OrderItem.create(order_id: 12,item_id:4, quantity: 1 ) 
OrderItem.create(order_id: 2,item_id: 2, quantity: 3 ) 
OrderItem.create(order_id: 3,item_id: 4, quantity: 1 ) 
OrderItem.create(order_id: 4,item_id: 1, quantity: 2 ) 
OrderItem.create(order_id: 5,item_id: 2, quantity: 3 ) 

Favorite.create(user_id: 2, item_id: 2)





