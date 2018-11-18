description_array=[]

var products = document.querySelectorAll(".product-grid__description_utensils");

//console.log(products);
for (i = 0; i < products.length; ++i)
{
	description_array[i]="description" + i ;
}

console.log

for (i = 0; i < products.length; ++i) {
  products[i].innerHTML = description_array[i];
}