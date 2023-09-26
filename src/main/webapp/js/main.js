// function for logout
function logout() {
	alert("Are you sure?");
	window.location.href = "./pages/login/Login.html";
}

// JSON FOR DEALS OF THE DAY
const deals_of_the_day = [
	{
		title: "Best_of_Electronics",
		image: {
			source: "assets/images/products/r1.jpg",
			alt: "Best_of_Electronics",
		},
		"price-offers": "Rs. 1,777",
		sub: "Apple, Samsung  & more",
	}
];

// declare and initialize the variable outside the loop

for (let i = 0; i <= 4; i++) {
	// remove the re-declaration and re-initialization
	const card_1 = document.createElement("div");
	card_1.setAttribute("class", "common-col");

	const img_of_electronics = document.createElement("img");
	img_of_electronics.setAttribute("class", "product-img");
	img_of_electronics.setAttribute("src", deals_of_the_day[i].image.source);
	img_of_electronics.setAttribute("alt", deals_of_the_day[i].image.alt);
	card_1.prepend(img_of_electronics);

	// eslint-disable-next-line no-inner-declarations
	function redirect() {
		window.location.href = `./pages/products and detial pages/best of electronincs.html?id=${deals_of_the_day[i].title}`;
	}

	img_of_electronics.addEventListener("click", redirect);

	const h3_for_product = document.createElement("h3");
	h3_for_product.setAttribute("class", "product-title");
	h3_for_product.innerText = deals_of_the_day[i].title;
	card_1.append(h3_for_product);

	const h4_for_product = document.createElement("h4");
	h4_for_product.setAttribute("class", "price-title"); // add the missing prefix
	h4_for_product.innerText = deals_of_the_day[i]["price-offers"];
	card_1.append(h4_for_product);

	const h6_for_product = document.createElement("h6");
	h6_for_product.setAttribute("class", "price");
	h6_for_product.innerText = deals_of_the_day[i].sub;
	card_1.append(h6_for_product);

	document.querySelector("div.common-row-col-deals").append(card_1);
	// if the append is null or not define uncomment this code
	// const containers = document.querySelectorAll("div.common-row-col-deals");
	// containers.forEach(container => {
	//     container.append(card_1.cloneNode(true));
	// });
}