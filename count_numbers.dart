import 'dart:io';


Map<String, int> countNumbers(List<int> numbers) {
  int positive = 0;
  int negative = 0;
  int zero = 0;

  
  for (int number in numbers) {
    if (number > 0) {
      positive++;
    } else if (number < 0) {
      negative++;
    } else {
      zero++;
    }
  }

  
  return {
    'positive': positive,
    'negative': negative,
    'zero': zero,
  };
}

void main() {
 
  List<int> numbers = [];

  
  for (int i = 0; i < 5; i++) {
    stdout.write('Enter integer ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);

    numbers.add(number);
  }

  
  Map<String, int> result = countNumbers(numbers);

  
  print('\n--- Number Count ---');
  print('Numbers entered: $numbers');
  print('Positive numbers: ${result['positive']}');
  print('Negative numbers: ${result['negative']}');
  print('Zeros: ${result['zero']}');
}