description_array=['Harpic red 1l Toilet Seat Cleaner cleans, decalcifies and freshens','Harpic Blue Seat Cleaner cleans, decalcifies and freshens','Harpic red 500ml','2 in 1 Harpic Cleaner','Bathroom Cleaner','Harpic White Seat Cleaner cleans, decalcifies and freshens','harpic blue 500ml','harpic black Seat Cleaner cleans, decalcifies and freshens','Pitanjali',
'toliet rug 80x60','Domex Seat Cleaner cleans, decalcifies and freshens','Hand scrub Glaze Toilet Seat Cleaner ','A shitty clock','Dank Towels','Domex 500ml','Harpic 2l Seat Cleaner cleans, decalcifies and freshens','Harpic red','something','Towels','Lemon toilet freshner'];

var products = document.querySelectorAll(".product-grid__description_toilet");

//console.log(products);
/*
for (i = 0; i < products.length; ++i)
{
	description_array[i]="description" + i ;
}
*/

console.log

for (i = 0; i < products.length; ++i) {
  products[i].innerHTML = description_array[i];
}