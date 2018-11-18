description_array=[]

var products = document.querySelectorAll(".product-grid__description_garden");

//console.log(products);
/*for (i = 0; i < products.length; ++i)
{
	description_array[i]="Basic tools required for gardening purposes and also very handy as well as sturdy";
}*/



for (i = 0; i < products.length; ++i) {
  products[i].innerHTML = "Basic tools required for gardening purposes and also very handy as well as sturdy";
}