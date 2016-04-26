#Title: UCUtrade
###Team Members: Igor Martire, Yitian Zou, Tiffany Chiang, David Nahm
###Demo Link: https://www.youtube.com/watch?v=Lm9LQHFaqSk

###Idea: 
An application to make it easier for students to sell their items to other students in the campus and vice-versa.

###Models and Description:
- User
  - has email, many Items, and many Comments
- Item
  - has name, price, user id,  image, and description
  - belongs to an User
- Comment
  - has text and an username
  - belongs to an Item

###Features:
- Users can signup and log in
  - Signing up sends a confirmation e-mail
  - Using devise
  - Sendgrid add-on
- Users can search for Items
- Users can comment on Items
  - Asynchronously (React.JS)
- Users can create new Items
- Users can edit Items they previously posted
- Image upload and permanent storage
  - Paperclip gem
  - AWS S3 server

###Division of Labor:
- Igor: Made users, AWS S3 setup and Bootstrap styling
- Tiffany: Made editing and creating new items
- Yitian: Made home page/search
- David: Made comments/show individual item
