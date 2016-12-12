var Employee = function(args) {
  this.firstName = args.firstName;
  this.sales = args.sales;

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
