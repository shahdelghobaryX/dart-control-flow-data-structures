void main() {
  // Create a Map containing student information.
  Map<String, dynamic> student = {
    'name': 'Sama',
    'age': 22,
    'grade': 85.5,
    'isPassed': true,
  };

  // Display the original student information.
  print('--- Student Information ---');
  print('Name: ${student['name']}');
  print('Age: ${student['age']}');
  print('Grade: ${student['grade']}');
  print('Passed: ${student['isPassed']}');

  // Update the student's grade.
  student['grade'] = 92.0;

  // Display the updated information.
  print('\n--- Updated Student Information ---');
  print('Name: ${student['name']}');
  print('Age: ${student['age']}');
  print('Grade: ${student['grade']}');
  print('Passed: ${student['isPassed']}');

  // Print the complete updated Map.
  print('\nUpdated Map:');
  print(student);
}