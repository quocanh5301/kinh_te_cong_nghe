class SalaryData {
  SalaryData({
    required this.salary,
    required this.numberOfEmployee,
  });

  final double salary;
  final double numberOfEmployee;

  double getTotalSalary() => salary * numberOfEmployee;
}
