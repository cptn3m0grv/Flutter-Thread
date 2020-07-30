// This file contains code on lambda expression

void main(){
  Function lam = () => print("For use of single statement");

  Function lam2 = () {
    print("Multiple statements");
    print("Another statement  ");
  };

  lam();
  print("\n");
  lam2();

  var add = (a, b) => a + b;
  print("");
  print(add(3, 4));
}