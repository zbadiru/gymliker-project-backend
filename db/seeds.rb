# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Card.delete_all
Comment.delete_all

Card.create([
    {
        image: "https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    },
    {
        image: "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    },
    {
        image: "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    },
    {
        image: "https://images.pexels.com/photos/17840/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    }
])

Comment.create([
    {
        card_id: 1,
        content: "wow awesome"
    },
    {
        card_id: 2,
        content: "sick workout bro"
    },
    {
        card_id: 3,
        content: "light weight!"
    },
    {
        card_id: 4,
        content: "haha that gym face though"
    }
])