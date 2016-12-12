var SalesTeam = function(employees) {
  this.employees = employees;

  this.find = function(firstName) {
    for (var i = 0; i < this.employees.length; i++) {
      if (this.employees[i].firstName === firstName) {
        return employees[i];
      }
    }
  }

  this.topPerformer = function() {
    topPerformer = this.employees[0];
    for (var i = 1; i < this.employees.length; i++) {
      if (topPerformer.totalSales() < this.employees[i].totalSales()) {
        topPerformer = this.employees[i];
      }
    }
    return topPerformer;
  }


}
