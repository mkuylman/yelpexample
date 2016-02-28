var init_restaurant_lookup;

init_restaurant_lookup = function(){
	$('#restaurant-lookup-form').on('ajax:success', function(event, data, status){
		$('#restaurant-lookup').replaceWith(data);
		init_restaurant_lookup();
	}) 
}

$(document).ready(function(){
	init_restaurant_lookup();
});