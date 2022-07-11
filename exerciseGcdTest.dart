import 'package:test/test.dart';

int gcd(int a, int b) {
  if (a == 0) {
    return b;
  }
  return gcd(b % a, a);
}

double lcm(int a, int b) {
  return (a * b) / gcd(a, b);
}


void main() {
  test('LCM of 18 and 48 should be equal to 144', () {
    var a, b;
    a = 18;
    b = 48;
    expect(lcm(a, b), equals(144));
  });


  // Test GCD
  // https://www.eolymp.com/ru/blogs/posts/16
  test('GCD of 18 and 48 should be equal to 6', () {
    expect(18.gcd(48), equals(6));
  });

  test('GCD of 1 and 4 should be equal to 1', () {
    expect(gcd(1, 4), equals(1));
  });

  test('GCD of 0 and 4 should be equal to 4', () {
    expect(gcd(0, 4), equals(4));
  });
  
  test('GCD of 0 and 0 should be equal to 0', () {
    expect(gcd(0, 0), equals(0));
  });

  // negative numbers
  test('GCD of 18 and -48 should be equal to 6', () {
    expect(18.gcd(-48), equals(6));
  });

  test('GCD of -18 and -48 should be equal to 6', () {
    expect(18.gcd(-48), equals(6));
  });

}
