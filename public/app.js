function something() 
{
	var x = window.localStorage.getItem('bbb');
	
	x = x * 1 + 1;

	window.localStorage.setItem('bbb', x);

	alert(x);
}

function add_to_cart(id)
{
	var key = 'product_' + id; //extract variable, refactoring

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);	
}


function find_items() 
{
	var total = 0;

	for (var i = 0; i < localStorage.length; i++) {

		var value = localStorage.getItem(localStorage.key(i));

    	total += value * 1;
	}
}