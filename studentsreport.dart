import 'dart:math';

class TestPrime {
int startingPoint = 1;
int endPoint = 0;
int factors = 0;
  
  
void testPrime(int testPrime) {
  
endPoint = testPrime;
for (startingPoint; startingPoint <= sqrt(endPoint); startingPoint++) {
if (endPoint % startingPoint == 0) {
factors++;
}
  
}
if (factors <= 2) {
print('$endPoint is prime.');
} else {
print('$endPoint is not prime.');
}
}
}

void main(List<String> args) {
var testPrime = TestPrime();


testPrime.testPrime(15); 
}
