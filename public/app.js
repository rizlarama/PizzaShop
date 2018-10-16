function add_to_cart(id) //adding user's choose of pizza to cart
{
	var key = 'product_' + id; //extract variable, refactoring

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	//count of items in cart
	update_orders_input();
	update_orders_button(); 
}


function update_orders_input() //show user's choices in text input (hidden)
{
	var orders = cart_get_orders();

    $('#orders_input').val(orders); //put values
    $('#number_orders').val(orders);
	
}


function update_orders_button() //update user's choice in button
{
	var text = 'Cart (' + cart_get_number_of_items() + ')';

	$('#orders_button').val(text);
}


function update_label_orders() //show in label and in text field in cart.erb number of items in cart
{
	var orders = cart_get_orders();

    $('#number_orders').val(orders); 
	
}


function cart_get_number_of_items() //only number of all items in cart
{
	var total = 0;

	for (var i = 0; i < window.localStorage.length; i++) {

		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if (key.indexOf('product_') == 0)
		{
			total += value * 1;
		}
    	
	}
	
	return total; // can check in console in browser (cart_get_number_of_items())
}


function cart_get_orders() //all orders and theirs amount
{
	var orders ='';

	for (var i = 0; i < window.localStorage.length; i++) {

		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if (key.indexOf('product_') == 0)
		{	
			orders = orders + key + '=' + value + ',';
		}
    	
	}
	
	return orders; // can check in console in browser (cart_get_orders())
}