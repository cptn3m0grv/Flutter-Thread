//  This file contains code on another rule of 
//  functional programming  known as 
//  Higher Order Functions

void main(){
	Function myfunction = (word) => word.length;	
	mylen(word: "Gaurav", myfunc: myfunction);
}

mylen({String word, Function myfunc}) {
	print(word);
	print(myfunc(word));
}

// So higher order functions are basically passing functions as functions arguments