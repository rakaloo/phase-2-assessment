var Employee = function(object) {
  this.firstName = object.firstName;
  this.sales = object.sales;

  this.totalSales = function() {
    var sum = 0;
    for (var i = 0; i < this.sales.length; i++) {
      sum += this.sales[i];
    }
    return sum;
  }

  this.averageSales = function() {
    return (this.totalSales()/this.sales.length);
  }
}
