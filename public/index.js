// console.log("i am in the js file");

// // HTTP.get("http://localhost:3000/api/recipes")

// axios.get("http://localhost:3000/api/products").then(function(response) {
//   console.log(response.data);
// });

console.log("I am in the js file!");

axios.get("http://localhost:3000/api/products").then(function(response) {
  var products = response.data;
  var productNames = products.map(function(product) {
    return product.name;
  });
  console.log(productNames);
});
