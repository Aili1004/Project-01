Restaurant.destroy_all
r1 = Restaurant.create :name => "BENNELONG", :description => "With one of Australia’s most celebrated chefs, Peter Gilmore, at the helm, Bennelong showcases the flavour, diversity and quality of Australian produce.", :address => "Bennelong Point, Sydney NSW 2000", :opening_hours => "10am-9pm", :popular_food => "Pasta, Steak", :count => 0, :totalcount => 0
r2 = Restaurant.create :name => "OPERA KITCHEN", :description => "Boasting awe-inspiring views of the harbour, indulge in a range of freshly made burgers, handmade sushi, sustainable seafood and Asian signature dishes.", :address => "Sydney Opera House, Bennelong Point, Sydney NSW 2000", :opening_hours => "7am-10.30pm", :popular_food => "Sashimi, Salmon, Sushi", :count => 0, :totalcount => 0
r3 = Restaurant.create :name => "OPERA BAR", :description => "Stop by for a leisurely bite to eat or enjoy a full fine dining experience as you choose from the Charcuterie, Raw Bar or traditional Opera Bar menu.", :address => "Lower Concourse, Sydney Opera House, Macquarie St, Sydney NSW 2000", :opening_hours => "8am-1am", :popular_food => "Helm Riesling, Denton View Hill SHED Pinot Noir", :count => 0, :totalcount => 0


Comment.destroy_all
c1 = Comment.create :content => "This restaurant is amazing! Can't wait to visit again... Strongly recommend to go!", :like => true
c2 = Comment.create :content => "This restaurant is not bad.. The food was tasty. But the staff was not friendly enough.", :like => true
c3 = Comment.create :content => "This restaurant sucks! Never ever go there again! You will regret!", :like => false


User.destroy_all
u1 = User.create :name => "Craigsy", :email => "craigsy@gmail.com", :password => 'chicken'
u2 = User.create :name => "Jonesy", :email => "jonesy@gmail.com", :password => 'chicken'

RestaurantUser.destroy_all
ru1 = RestaurantUser.create :name => "Aili Zhang", :email => "aili.zhang91@gmail.com", :license_number => "12345ABC", :password => "chicken"
ru2 = RestaurantUser.create :name => "Eileen Li", :email => "eileen.li@gmail.com", :license_number => "00000XYZ", :password => "chicken"















