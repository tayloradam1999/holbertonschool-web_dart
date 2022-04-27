// Accepts two variable height and base and returns the area of the triangle.


double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  // check if area has decimals
  if (area.toString().contains('.')) {
    // if so, lets round it to 2 decimals
    String area2 = area.toStringAsFixed(2);
    // convert to double
    area = double.parse(area2);
    // return the double
    return area;
  }
  // if not, return the double
  return area;
}

// area could have started as String looking back at this code.