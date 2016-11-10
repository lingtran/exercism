const GIGASECOND = Math.pow(10, 9);

function Gigasecond (date) {
  this.startDate = date;
};

Gigasecond.prototype.date = function () {
  var startTime = this.startDate.getTime();
  return new Date(startTime + GIGASECOND * 1000);
};

module.exports = Gigasecond;
