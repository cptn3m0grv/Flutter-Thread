class VisitorForm{
  String name;
  String gender;
  int mobile;
  
  VisitorForm({String gender, String name, int mobile}){
    print("Constructor called by default");
    this.name = name;
    this.gender = gender;
    this.mobile = mobile;
  }

}

class VisitorFormOptimized{
  String name;
  String gender;
  int mobile;

  VisitorFormOptimized({this.gender, this.name, this.mobile});

}

void main(){
  VisitorForm visitor1 = VisitorForm(
    name: "Gaurav",
    gender: "Male",
    mobile: 12345
  );

  VisitorFormOptimized visitor2 = VisitorFormOptimized(
    name: "Sarah",
    gender: "Female",
    mobile: 67890
  );

  print("Visitor 1 details: ");
	print("Name: " + visitor1.name);
	print("Gender: " + visitor1.gender);
	print("Mobile: " + visitor1.mobile.toString());

	// these are known as getters

	print("");
	print("Visitor 2 details: ");
	print("Name: " + visitor2.name);
	print("Gender: " + visitor2.gender);
	print("Mobile: " + visitor2.mobile.toString());

}