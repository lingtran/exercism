var DnaTranscriber = function(){
};

var DnaRnaComplements = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
};

DnaTranscriber.prototype.toRna = function(nucleotides){
  var resultantRna = [];
  for (i=0; i < nucleotides.length; i++) {
    var charAsKey = nucleotides.charAt(i);
    var complement = DnaRnaComplements[charAsKey];
    resultantRna.push(complement);
  };
  return resultantRna.join('');
};

module.exports = DnaTranscriber;
