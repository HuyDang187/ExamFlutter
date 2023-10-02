import 'package:examflutter/employee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EmployeeManagement());
}

class EmployeeCard extends StatelessWidget {
  final Employee employee;

  EmployeeCard({required this.employee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(employee.avatarUrl),
      ),
      title: Text(employee.name),
      subtitle: Text('Age: ${employee.age} - Position: ${employee.position}'),
    );
  }
}

class EmployeeManagement extends StatelessWidget {
  const EmployeeManagement({super.key});
  static const showGrid = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Employee Management'),
        ),
        body: Center(child: showGrid ? _buildList() : _buildGrid()),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return EmployeeCard(employee: employees[index]);
      },
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return EmployeeCard(employee: employees[index]);
      },
    );
  }
}
