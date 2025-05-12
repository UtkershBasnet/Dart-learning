class Person {
    String name;
    int age;

    Person({required this.name, required this.age});
}
class Student {
  String name;
  int marks;

  // Named constructor
  Student.topper(this.name) : marks = 100;
  Student.average(this.name) : marks = 50;
  Student.belowAverage(this.name) : marks = 30;

  void show() {
    print('$name scored $marks');
  }
}



void main(){
    //make a list of numbers and then print the sum of the numbers
    List<int> numbers = [1, 2, 3, 4, 5];
    //make a list of strings and then print the length of each string
    List<String> strings = ["hello", "world", "dart"];
    for (String string in strings) {
        print("The length of the string '$string' is: ${string.length}");
    }
    //make a list of maps and then print the value of each key in the map
    List<Map<String, String>> maps = [
        {"name": "John", "age": "30"},
        {"name": "Jane", "age": "25"},
        {"name": "Doe", "age": "40"}
    ];
    for (Map<String, String> map in maps) {
        print("The name is: ${map['name']} and the age is: ${map['age']}");
    }
    //make a list of objects and then print the value of each property in the object
    List<Person> people = [
        Person(name: "John", age: 30),
        Person(name: "Jane", age: 25),
        Person(name: "Doe", age: 40)
    ];
    for (Person person in people) {
        print("The name is: ${person.name} and the age is: ${person.age}");
    }

    Student student1 = Student.topper("John");
    student1.show();       
    Student student2 = Student.average("Jane");
    student2.show();
    Student student3 = Student.belowAverage("Doe");
    student3.show();       


    int addAllNumbers(List<int> numbers){
        int sum =0;
        for(int number in numbers){
            sum += number;
        }
        return sum;
    }
    addAllNumbers(numbers);
    print("The sum of the numbers is: ${addAllNumbers(numbers)}");
}