# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!(alias: 'Lonely Angel')
user2 = User.create!(alias: 'Lost Angel')
user3 = User.create!(alias: 'Lonely Heart')

post1 = Post.create!(title: 'I feel my life is in danger please help!', text: 'I get beaten for no reason and I have nowhere to go. What should I do', user_id: user1.id) 
post2 = Post.create!(title: 'Does anyone feel like me?', text: 'I have been contemplating suicide. I feel like no one cares.', user_id: user2.id)
post3 = Post.create!(title: 'I hate being here!', text: 'I have been cutting myself. Everyone makes fun of me for being ugly. Why am I here.', user_id: user3.id)
post4 = Post.create!(title: 'My family threatened to take my life away!', text: 'I ran away from home but my parents found me. They locked me in a closet. I am scared.', user_id: user1.id)
    
tag1 = Tag.create!(text: 'beating')
tag2 = Tag.create!(text: 'bullying')
tag3 = Tag.create!(text: 'anger')
tag4 = Tag.create!(text: 'pain')
tag5 = Tag.create!(text: 'self harm')
tag6 = Tag.create!(text: 'neglect')
tag7 = Tag.create!(text: 'domestic violence')
tag8 = Tag.create!(text: 'depression')
tag9 = Tag.create!(text: 'suicide')
tag10 = Tag.create!(text: 'abuse')