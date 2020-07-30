// These codes are to practice different ways to implement functions in DART Programming language
// These concepts will help us understand flutter better and become an efficient developer
// Ways to implement functions
// 1) Positional Arguments
// 2) Named Arguments
// 3) Lambda/ Anonymous functions
// Refer to all the program files in this directory

// This is the main function


main(){
  posArg("Gaurav", "IN");
  namedArg(country: "IN", name: "Gaurav");
  optionalArgs(name: "Gaurav");
  defaultValue(name: "Gaurav");  
}

// These are basic way to implement arguments
posArg(String name, String country){
  print("Hello $name from $country");
  print("${name.length}");
  print("");
}

// These are used when you are not aware about positions
namedArg({String name, String country}){
  print("Hello $name from $country");
  print("");
} 

// These are when you do no provide all the arguments
// If value of any argument is not passed then by default it will be
// 0 or null based on the datatype.
optionalArgs({String name, String country}){
  print("Hello $name from $country");
  print("");
}

// These are used when we want to have some defualt value
// if in case no value of argument is passed.
defaultValue({String name, String country="IN"}){
  print("Hello $name from $country");
  print("");
}