# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##########
# Users
##########

u1 = User.new(email: "ucut@ucut.com", password: 'password', password_confirmation: 'password')
u1.skip_confirmation!
u1.save!

u2 = User.new(email: "igormartire@berkeley.edu", password: 'password', password_confirmation: 'password')
u2.skip_confirmation!
u2.save!

##########
# Items
##########

i1 = Item.create(name: "Sunglasses", description: "Ray Ban original, used for 1 year, small marks on the left frame, polarized, UV protection", created_at: "2016-04-26 19:05:52", updated_at: "2016-04-26 19:05:52", user_id: 1, available: false, avatar_file_name: "sunglasses.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 174225, avatar_updated_at: "2016-04-26 19:05:51", price: 99.90)

i2 = Item.create(name: "Cap", description: "I once got this cap for birthday but I’ve never really used it. Perfect conditions.", created_at: "2016-04-26 19:07:20", updated_at: "2016-04-26 19:07:20", user_id: 2, available: true, avatar_file_name: "cap.jpeg", avatar_content_type: "image/jpeg", avatar_file_size: 6845, avatar_updated_at: "2016-04-26 19:07:20", price: 10)

i3 = Item.create(name: "Macbook Pro", description: "This Macbook Pro has been my friend for a long while, but now it is time to move on to a newer version. If you are, however, looking for something cheap but of quality, here is your chance! This Macbook is in very good conditions, since I'm a very careful person and always cleaned it weekly in a very diligent way. Sometimes it may seem a little slow, but it will probably be fine if don't use for a lot of things at the same time as I do. I'm also flexible about the price, which, let's agree, is very reasonable!", created_at: "2016-04-26 19:11:29", updated_at: "2016-04-26 19:11:30", user_id: 1, available: true, avatar_file_name: "macbook.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 55227, avatar_updated_at: "2016-04-26 19:11:29", price: 587.12)

i4 = Item.create(name: "Watch", description: "This watch is beautiful, perfect for you that would like to consider yourself a traveler. With it you will always remember it is five o'clock somewhere. ;)", created_at: "2016-04-26 19:13:24", updated_at: "2016-04-26 19:13:26", user_id: 2, available: true, avatar_file_name: "watch.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 460207, avatar_updated_at: "2016-04-26 19:13:24", price: 148.75)

############
# Comments
############

c1 = Comment.create(user_id: nil, item_id: 1, text: "What size?", created_at: "2016-04-26 19:23:39", updated_at: "2016-04-26 19:23:39", username: "Bob")

c2 = Comment.create(user_id: 1, item_id: 1, text: "M", created_at: "2016-04-26 19:23:50", updated_at: "2016-04-26 19:23:50", username: "ucut")

c3 = Comment.create(user_id: nil, item_id: 4, text: "Why would I want to remember it is five o'clock somewhere?", created_at: "2016-04-26 19:25:17", updated_at: "2016-04-26 19:25:17", username: "Jack")

c4 = Comment.create(user_id: 2, item_id: 4, text: "It was just a joke. Musical reference: watch?v=BPCjC543llU", created_at: "2016-04-26 19:25:52", updated_at: "2016-04-26 19:25:52", username: "igormartire")

c5 = Comment.create(user_id: nil, item_id: 4, text: "Omg, that was funny. Now I want the watch. Can you do for 100$?", created_at: "2016-04-26 19:26:29", updated_at: "2016-04-26 19:26:29", username: "Jack")

c6 = Comment.create(user_id: 2, item_id: 4, text: "Sorry, no. :/", created_at: "2016-04-26 19:26:39", updated_at: "2016-04-26 19:26:39", username: "igormartire")

c7 = Comment.create(user_id: nil, item_id: 4, text: "Damn... at least it is five o'clock somewhere.", created_at: "2016-04-26 19:27:17", updated_at: "2016-04-26 19:27:17", username: "Jack")

c8 = Comment.create(user_id: 2, item_id: 4, text: "Yeah, you got the spirit.", created_at: "2016-04-26 19:27:31", updated_at: "2016-04-26 19:27:31", username: "igormartire")

c9 = Comment.create(user_id: nil, item_id: 3, text: "Wait, which version is it? Mid 2014?", created_at: "2016-04-26 19:29:23", updated_at: "2016-04-26 19:29:23", username: "Richard")

c10 = Comment.create(user_id: 1, item_id: 3, text: "No, it is Late 2013.", created_at: "2016-04-26 19:29:41", updated_at: "2016-04-26 19:29:41", username: "ucut")
