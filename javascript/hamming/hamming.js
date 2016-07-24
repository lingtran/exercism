var Hamming = function(){
};

var Error = function(message){
  this.message = message;
};

function checkLengthsEqualBetween(strandOne, strandTwo){
  return (strandOne.length === strandTwo.length);
};

function calcHammingDistance(strandOne, strandTwo){
  var hammingDistance = 0;
  for (i = 0; i < strandOne.length; i++) {
    if (strandOne[i] !== strandTwo[i]) {
      hammingDistance += 1;
    }
  };
  return hammingDistance;
};

Hamming.prototype.compute = function (strandOne, strandTwo){
  if (checkLengthsEqualBetween(strandOne, strandTwo)){
    return calcHammingDistance(strandOne, strandTwo);
  } else {
    throw new Error("DNA strands must be of equal length.");
  }
};

module.exports = Hamming;
