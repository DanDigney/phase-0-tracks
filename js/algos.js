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
		if(x[c].length > x[0].length) {
			var hidden = x[0];
			x[0] = x[c];
			x[c] = hidden;
		}
	}
	console.log(x[0])
}

var y = ["long phrase", "longer phrase", "longest phrase"];

compareLength(y);

function compareValues(object_one, object_two) {
	x = object_one;
	y = object_two;
	this.propOne = Object.keys(x);
	this.propTwo = Object.keys(y);
	for(c = 0; c < propOne.length; c++) {
		console.log("fuck");
		if(propOne[c] === propTwo[c] ||
			propOne[c] === propTwo[c-1]) {
			console.log("shit");
		}
	}
	console.log(propOne);
	console.log(propTwo);
}

var a = {name: "bill", age: 25};
var b = {age: "dog", animal: 4};

compareValues(a, b)
