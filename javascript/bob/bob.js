//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {
  this.responseToSilence  = "Fine. Be that way!";
  this.responseToYelling  = "Whoa, chill out!";
  this.responseToQuestion = "Sure.";
  this.responseInGeneral  = "Whatever.";

};

Bob.prototype.hey = function(input) {
  if (checkForYelling(input)) {
    return this.responseToYelling;
  } else if (checkForQuestion(input)) {
  return this.responseToQuestion;
  } else if (checkForSilence(input)) {
    return this.responseToSilence;
  } else {
    return this.responseInGeneral;
  }
};

function checkForQuestion(input) {
  return input.endsWith('?');
}

function checkForYelling(input) {
  return input.toUpperCase() == input && input.toLowerCase() != input;
}

function checkForSilence(input) {
  return /^\s*$/.test(input);
}

module.exports = Bob;
