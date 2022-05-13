// Accepts list of doubles and converts them to Fahrenheit.


List<double> convertToF(List<double> temperaturesInC) {
  // all returns are rounded to 2 decimal places.
  List<double> temperaturesInF = [];
  for (var i = 0; i < temperaturesInC.length; i++) {
    String tempInF = ((temperaturesInC[i] * 9 / 5) + 32).toStringAsFixed(2);
    // check if the number holds two decimal places ex: '25.00'
    // if it doesn't, fill it with zeros.
    if (tempInF.split(".")[1].length < 3) {
      tempInF = tempInF + "0";
    }
    temperaturesInF.add(double.parse(tempInF));
  }
  return temperaturesInF;
}