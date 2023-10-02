class Employee {
  final String name;
  final int age;
  final String position;
  final String avatarUrl;

  Employee({
    required this.name,
    required this.age,
    required this.position,
    required this.avatarUrl,
  });
}

List<Employee> employees = [
  Employee(
      name: 'Dang Nguyen Huy',
      age: 18,
      position: 'Developer',
      avatarUrl: 'images/avatar1.jpg'),
  Employee(
      name: 'Tran Van A',
      age: 30,
      position: 'Developer',
      avatarUrl: 'images/avatar2.jpg'),
  Employee(
      name: 'Tran Van B',
      age: 25,
      position: 'Designer',
      avatarUrl: 'images/avatar3.jpg'),
];
