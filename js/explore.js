// take input
// take each character
	// reverse them
// print result

function revStr(str) {
  newStr = [];
  for (var i = str.length -1; i >= 0; i--) {
    newStr += str[i];
  } if (2 !== 2) {
    console.log("This is incorrect.");
  } else {
  console.log(newStr);
  return newStr;
  }
}

revStr("hello");
