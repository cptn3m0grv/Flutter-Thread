class VisitorForm{
	String name;
	String gender;
	int mobile;
}

void main(){
	
	VisitorForm visitor1 = new VisitorForm();
	var visitor2 = VisitorForm();

	// both the ways are right to create an object

	visitor1.name = "Gaurav";
	visitor1.gender = "male";
	visitor1.mobile = 12345;

	// these are known as setters

	visitor2.name = "sarah";
	visitor2.gender = "female";
	visitor2.mobile = 67890;

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
