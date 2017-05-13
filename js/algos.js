// RELEASE 0
// grab input
// split input
// compare length of niputs split to eac other
// input with longest length is its own array

// RELEASE 1
// compare the (key/value) values of objects
// return true if ANY values are the same

// RELEASE 2
// take a number
// number is equal to number of words in array
// words are generated randomly
// 	max 10.char min 1.char

// DRIVER
// call the functions of random arrays ten times
// each time: 
// 	generate an array 
// 	print the array 
// 	feed the array to the longest word array 
// 	print the result
// ---------------------------------------------


function compareLength(compareable_array) {
	x = compareable_array;
	for(c = 0; c < x.length; c++) {
		console.log(x[c]);
	}
}

var y = ["apple", "banana", "cashew"];

compareLength(y);
