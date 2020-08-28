void main(){

  double a = 2;
  double b = 0;
  double c;

  try{
    c = a/b;
    print(c);
  }on IntegerDivisionByZeroException{
    print("Cannot divide by zero.");
  }catch(e){
    print(e);
  }finally{
    print("This block of code will always run.");
  }

}