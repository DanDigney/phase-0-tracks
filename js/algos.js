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

var a = {name: "bill", hair: "red", type: "ass", animal: 25};
var b = {animal: "dog", age: 4};

function compareValues(a, b) {
	this.aa = Object.keys(a);
	this.bb = Object.keys(b);
	var i = 0;
	for(c = 0; c <= aa.length; c++) {
		if(aa[c] == bb[i]) {
			return true;
		} else if(bb[i] == undefined) {
			return false;
		} else if(c == aa.length) {
				i += 1;
				c = 0;
				if(i == aa.length) {
					return false;
				}
		} else{
				console.log("Trying next key...");
		}
	}
}

console.log(compareValues(a, b));

function randomString(number) {
	var holder = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for(i = 0; i < number; i++) {
		for(c = 0; c < Math.floor((Math.random() * 10) + 1); c++) {
			holder[i] += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
		}
	}

randomString(3);