class VisitorForm {
  String name;
  String gender;
  int mobile;
  
  VisitorForm(this.name, this.gender, this.mobile);
  
  doSomething(){
    print("This is Visitor's form, ${this.name}, ${this.gender}, " + this.mobile.toString());
  }
}

class JobForm extends VisitorForm{
  String techSkills;
  String purpose;

  JobForm({this.techSkills, this.purpose, name, gender, mobile}) : super(name, gender,mobile);

  @override
  doSomething(){
    print("This is job form, ${this.name}, ${this.techSkills}, ${this.purpose}, ${this.gender}, " + this.mobile.toString());
  }

}

void main(){
  VisitorForm visitor1 = new VisitorForm("Gaurav", "Male", 12345);
  JobForm visitor2 = new JobForm(techSkills: "flutter", purpose: "job interview",name: "Gaurav", gender: "Male", mobile: 12345);

  visitor1.doSomething();
  print("");
  visitor2.doSomething();
}