class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	Product.create ({
  		:title => 'Hawaiian', 
  		:description => 'This is Hawaiian pizza', 
  		:price => 8.80, 
  		:size => 28, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => false, 
  		:path_to_image => '/images/146.jpg'
  	})

  	Product.create ({
  		:title => 'Pepperone', 
  		:description => 'Nice Pepperone pizza', 
  		:price => 7.40, 
  		:size => 28, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => true, 
  		:path_to_image => '/images/2.jpg'
  	})

  	Product.create ({
  		:title => 'Bolognese', 
  		:description => 'Amazing Bolognese pizza', 
  		:price => 7.40, 
  		:size => 28, 
  		:is_spicy => false, 
  		:is_veg => false, 
  		:is_best_offer => false, 
  		:path_to_image => '/images/3.jpg'
  	})

    Product.create ({
      :title => 'Salami', 
      :description => 'Handsome Salami pizza', 
      :price => 7.40, 
      :size => 28, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/salami.png'
    })

    Product.create ({
      :title => 'Musta', 
      :description => 'Our handmade Musta pizza', 
      :price => 7.40, 
      :size => 28, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/4.jpg'
    })

    Product.create ({
      :title => 'Mush', 
      :description => 'Delicious Mush pizza', 
      :price => 7.40, 
      :size => 28, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/5.jpg'
    })
  end
end
