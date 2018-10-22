class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	Product.create ({
  		:title => 'Hawaiian', 
  		:description => 'This is Hawaiian pizza', 
  		:price => 350, 
  		:size => 30, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => false, 
  		:path_to_image => '/images/146.jpg'
  	})

  	Product.create ({
  		:title => 'Pepperoni', 
  		:description => 'Nice Pepperoni pizza', 
  		:price => 450, 
  		:size => 30, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => true, 
  		:path_to_image => '/images/2.jpg'
  	})

  	Product.create ({
  		:title => 'Vegetarian', 
  		:description => 'Amazing Vegetarian pizza', 
  		:price => 400, 
  		:size => 30, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => false, 
  		:path_to_image => '/images/3.jpg'
  	})

    Product.create ({
      :title => 'Salami', 
      :description => 'Handsome Salami pizza', 
      :price => 500, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/salami.png'
    })
  end
end
