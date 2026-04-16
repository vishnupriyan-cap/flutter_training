// Dart Basics - Classes and Inheritance
void main() {
  // Creating an instance of Employee
  Employee employee1 = Employee('Alice', 101, 'Developer');
  employee1.displayInfo();

  // Creating an instance of Manager (inherits from Employee)
  Manager manager1 = Manager('Bob', 102, 'Senior Developer', 5);
  manager1.displayInfo();

  // Polymorphism: treating Manager as Employee
  Employee employee2 = Manager('Charlie', 103, 'Lead Developer', 10);
  employee2.displayInfo(); // Calls overridden method

  // Creating an instance of Company
  Company company1 = Company('Tech Solutions', [employee1, manager1]);
  company1.displayInfo();
}

// Base class
class Person {
  String name;
  int id;

  Person(this.name, this.id);

  void displayInfo() {
    print('Person: $name, ID: $id');
  }
}

// Employee inherits from Person
class Employee extends Person {
  String role;

  Employee(String name, int id, this.role) : super(name, id);

  @override
  void displayInfo() {
    print('Employee: $name, ID: $id, Role: $role');
  }
}

// Manager inherits from Employee
class Manager extends Employee {
  int teamSize;

  Manager(super.name, super.id, super.role, this.teamSize);

  @override
  void displayInfo() {
    super.displayInfo(); // Call parent's displayInfo
    print('  Manages $teamSize people');
  }
}

class Company {
  String name;
  List<Employee> employees;

  Company(this.name, this.employees);

  void displayInfo() {
    final employeeNames = employees.map((e) => e.name).join(', ');
    print('Company: $name, Employees: $employeeNames');
  }
}
