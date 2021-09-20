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

comment1 = Comment.create!(alias: 'Lisa Little', text: 'Is there a safe shelter around you? Can you try your local police.', post_id: post1.id)
comment2 = Comment.create!(alias: 'Lost Angel', text: 'Yes I tried the police but they sent my back to my parents what do I do?', post_id: post1.id)
comment3 = Comment.create!(alias: 'Lisa Little', text: 'I have a list of numbers and I will also give you mine. I will be doing some searching to get you help.', post_id: post1.id)
comment4 = Comment.create!(alias: 'Maria Sanchez', text: 'Is everything ok. Do you want to talk about it. Let me know what I can do to help you.', post_id: post2.id)
comment5 = Comment.create!(alias: 'Lonely Angel', text: 'Everyone ignores me and my own parents act like I do not exist. I just want a friend who I can listen to me.', post_id: post2.id)
comment6 = Comment.create!(alias: 'Maria Sanchez', text: 'I can be your friend. My communication is open anytime you need to talk.', post_id: post2.id)
comment7 = Comment.create!(alias: 'Lester Thomas', text: 'Harming yourself because of what others say will not make the pain go away. Some people call names because they are not satisfied with themselves.', post_id: post3.id)
comment8 = Comment.create!(alias: 'LonelyHeart', text: 'It still hurts though and I also get bullied.', post_id: post3.id)
comment9 = Comment.create!(alias: 'Lester Thomas', text: 'Have you told anyone about the bullies?', post_id: post3.id)
comment10 = Comment.create!(alias: 'Betty Peterson', text: 'Are you ok? That is a scary situation. How can I help.', post_id: post4.id)
comment11 = Comment.create!(alias: 'Lost Angel', text: 'My parents keep a close eye on me I am using a cell phone someone gave me from school. I managed to keep the cellphone hidden.', post_id: post4.id)
comment12 = Comment.create!(alias: 'Betty Peterson', text: 'Can your friend call the police for you.', post_id: post4.id)
comment13 = Comment.create!(alias: 'Lost Angel', text: 'No the police took me back to my parents.', post_id: post4.id)
