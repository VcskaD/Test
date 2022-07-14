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
  


  // Test LCM
  
  test('LCM of 4 and 22 should be equal to 44', () {
    expect(lcm(4, 22), equals(44));
  });
  test('LCM of 1 and 4 should be equal to 4', () {
    expect(lcm(1, 4), equals(4));
  });
  test('LCM of 0 and 4 should be equal to 0', () {
    expect(lcm(0, 4), equals(0));
  });
  test('LCM of 0 and 0 should be equal to 0', () {
    expect(lcm(0, 0), equals(isNaN));
  });
 
   // negative numbers
  test('LCM of 18 and -48 should be equal to -144', () {
    expect(lcm(18, -48), equals(-144));
  });
  test('LCM of -18 and -48 should be equal to 144', () {
    expect(lcm(-18, -48), equals(144));
  });
  test('LCM of -16 and 48 should be equal to 48', () {
    expect(lcm(-16, 48), equals(48));
  });


}
