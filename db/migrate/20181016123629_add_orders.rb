class AddOrders < ActiveRecord::Migration[5.2]
  def change
  	create_table :orders do |t|
  		t.text :name
  		t.text :phone  		
  		t.text :address
  		t.text :number_orders

  		t.timestamps
  	end
  end
end
