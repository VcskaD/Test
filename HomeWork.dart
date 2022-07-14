 // Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

void map() {
  final List myList = [
    'blue',
    'red',
    'amber',
    'blue',
    'green',
    'orange',
    'red',
    'blue',
    'pink',
    'amber',
    'blue',
    123,
    123,
    234
  ];
  final Map counts = {};
  myList.forEach((e) => counts.containsKey(e) ? counts[e]++ : counts[e] = 1);
  print(counts);
}

// Реализуйте методы вычисления НОД и НОК целых чисел.
int gcd(int a, int b) {
  if (a == 0) {
    return b;
  }
  return gcd(b % a, a);
}

double lcm(int a, int b) {
  return (a * b) / gcd(a, b);
}


// Реализуйте методы для преобразования целых чисел из десятичной системы
// в двоичную и обратно.
void decimalToBinary() {
  print(int.tryParse('110011', radix: 2));
  print(51.toRadixString(2));
}

// Реализуйте метод, который разбивает число на простые множители и возвращает их.
void factoring() {
  print(PrimeFactors().factors(255));
}

class PrimeFactors {
  List<int> factors(int number) {
    List<int> result = [];
    int start = 2;
    while (number != 1) {
      if (number % start == 0) {
        number = number ~/ start;
        result.add(start);
      } else {
        start += 1;
      }
    }
    return result;
  }
}
void main() {
  var a, b;
  b = 48;
  a = 18;

  print(18.gcd(48));

  print(lcm(a, b).toString());

  decimalToBinary();

  factoring();

  map();
}
