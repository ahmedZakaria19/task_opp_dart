double calculateTotal(double a, double b, double c) => a + b + c;
double calculateAverage(double total) => total / 3;
String getResult(double average) => (average >= 50) ? "pass" : "fail";
void main() {
  double a = 80, b = 70, c = 40;
  double total = calculateTotal(a, b, c);
  double average = calculateAverage(total);
  String result = getResult(average);
  print("Total: $total \nAverage: $average \nResult: $result");
}
