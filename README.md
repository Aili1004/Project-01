== README

### Project One - RateIT

- [view](https://github.com/Aili1004/Project-01) source in Github.
- [view](http://az-ratings.herokuapp.com/) project in Heroku.


-------------------------


## **Models**
- comment, restaurant, user, restaurant_user, image

## **Associations**
- 1 User has many Comments; 1 Comment belongs to 1 User
- 1 Restaurant has many Comments; 1 Comment belongs to 1 Restaurant
- 1 Restaurant has many Images; 1 Image belongs to 1 Restaurant
- 1 Restaurant_user has many Restaurants; 1 Restaurant belongs to 1 Restaurant_user

## **Extra Gems Installed**
- gem 'bcrypt', '~> 3.1.7'
- gem 'social-share-button', '~> 0.1.6'
- gem 'slick_rails'

## **Javascript**
- Only used javascript for _slick_ function which can be found in 'application.js'

## **CSS**
- All css is written in 'application.css'


-------------------------


## **RateIT main Functionalities**
- Normal users and restaurant users can view the home page and see all the comments without signing up or logging in.
- Normal users can only add comments or rate a restaurant if they have an account and logged in.
- Normal users' details are not supposed to be shown in the app after they leave comments and rate.
- Restaurant owners can be seen in the app when users click one specific restaurant.
- Restaurant users can only add new restaurants, update and delete if they have an account with RateIT.
- Restaurant users can only update or delete a restaurant if they are currently logged in and is the original restaurant owner. They are not supposed to update or delete the restaurant that belongs to other restaurant owners.
- All users have the abilities to share every page of the app.
- When adding a new restaurant, users are only able to add one image initially. However, they can add more images later when they update the restaurant. The images they added will be shown as gallary in the 'show' page.
	

-------------------------


## **Functionalities I would like to add if had more time**
- Google Map; 
- When normal users logged in, they should be able to see all the comments they have posted.
- Separate normal users and restaurant users, so that normal users are not able to see Restaurants option in menu bar; same as restaurant users.
- Add mandatory fields for the forms.


-------------------------


## **Difficulties I have faced during the project**
- User authentications
- Adding and deleting columns from existing tables, modifying models
- Designs


