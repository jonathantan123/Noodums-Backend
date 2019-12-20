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


User.create(email_address: "", password_digest: BCrypt::Password.create('password'), first_name: "", last_name: "", phone_number: "")
User.create(email_address: "jonathantan@brandeis.edu", password_digest: BCrypt::Password.create('password'), first_name: "Jon", last_name: "Tan", phone_number: "781-296-7750")

Item.create(name: "Buffalo Exchange", description: " Set of 6. Served with Roqfuefort Dip. Filled with our buffalo pulled chicken, celery, tarragon ", price: 850, image:"https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )
Item.create(name: "The Traditional", description: "  Set of 6. Served with traditional soy-vinegar dipping sauce . Filled with pork, chive, napa cabbage, and shitake mushroom", price: 750, image: "https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )
Item.create(name: "Italiano", description: "Like a ravioli but not. Set of 6. Finished in a brown butter sage sauce. Filled with our ricotta, roasted shiitake mushroom, and lots of parmasan (Veg) ", price: 850, image:'https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'  )
Item.create(name: "Kimchi Tofu", description: " Set of 6. Served with traditional soy-vinegar dipping sauce. Filled with tofu, glass noodles, kimchi, and beansprouts (Vegan) ", price: 750, image: "https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" )

Order.create(user_id: 1)

OrderItem.create(order_id: 1,item_id: 1 ) 
OrderItem.create(order_id: 1,item_id: 2 ) 
OrderItem.create(order_id: 1,item_id: 3 ) 

Favorite.create(user_id: 1, item_id: 2)





