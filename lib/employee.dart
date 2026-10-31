class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name, Salary: $salary");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
    : super(name, salary);

  @override
  void displayInfo() {
    print(
      "Developer Name: $name, Salary: $salary, Language: $programmingLanguage",
    );
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, double salary, this.designTool) : super(name, salary);

  @override
  void displayInfo() {
    print("Designer Name: $name, Salary: $salary, Design Tool: $designTool");
  }
}
