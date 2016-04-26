# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(:email => "user@ucut.com", :password => 'password', :password_confirmation => 'password')
u2 = User.create(:email => "user2@ucut.com", :password => 'password', :password_confirmation => 'password')
u3 = User.create(:email => "user3@ucut.com", :password => 'password', :password_confirmation => 'password')
u4 = User.create(:email => "user4@ucut.com", :password => 'password', :password_confirmation => 'password')
u5 = User.create(:email => "user5@ucut.com", :password => 'password', :password_confirmation => 'password')
i1 = Item.create(:name => "Item1", :user_id => 1, :description => "Line 1", :price => "10.00", :available => true)
i2 = Item.create(:name => "Item2", :user_id => 1, :description => "Line 1", :price => "20.00", :available => true)
i3 = Item.create(:name => "Item3", :user_id => 1, :description => "Line 1\nLine 2", :price => "30.00", :available => true)
i4 = Item.create(:name => "Item4", :user_id => 2, :description => "Line 1\nLine 2", :price => "40.00", :available => true)
i5 = Item.create(:name => "Item5", :user_id => 2, :description => "Line 1\nLine 2\nLine 3", :price => "50.00", :available => true)
i6 = Item.create(:name => "Item6", :user_id => 2, :description => "Line 1\nLine 2\nLine 3", :price => "60.00", :available => true)
i7 = Item.create(:name => "Item7", :user_id => 3, :description => "Line 1\nLine 2\nLine 3\nLine4", :price => "70.00", :available => true)
i8 = Item.create(:name => "Item8", :user_id => 3, :description => "Line 1\nLine 2\nLine 3\nLine4", :price => "80.00", :available => true)
i9 = Item.create(:name => "Item9", :user_id => 3, :description => "Line 1\nLine 2\nLine 3\nLine4\nLine5", :price => "90.00", :available => true)
i10 = Item.create(:name => "Item10", :user_id => 4, :description => "Line 1\nLine 2\nLine 3\nLine4\nLine5", :price => "100.00", :available => true)
c1 = Comment.create(:user_id => u5.id, :username => "abc", :item_id => i1.id, :text => "Hi, is there any scratch on that?")
c2 = Comment.create(:user_id => u1.id, :username => "david", :item_id => i1.id, :text => "Yes, there is a little scratch on the right side.")
c3 = Comment.create(:user_id => u4.id, :username => "igor", :item_id => i1.id, :text => "Could you upload an image of that?")
c4 = Comment.create(:user_id => u1.id, :username => "tiffany", :item_id => i1.id, :text => "Done.")
c5 = Comment.create(:user_id => u3.id, :username => "yitian", :item_id => i5.id, :text => "Comment Line 1.\nComment Line 2;\nComment Line 3.")
c6 = Comment.create(:user_id => u2.id, :username => "cba", :item_id => i9.id, :text => "Comment Line 1.\nComment Line 2;\nComment Line 3.")
