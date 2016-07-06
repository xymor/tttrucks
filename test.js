"use strict";

const DIGITS  = 16;
var min = Math.pow(10,DIGITS - 1)
var max = Math.pow(10,DIGITS)
console.time("label2");
for(var i = max; i > min; i--){
  if(isPrime(i)){
    console.log(`Largest ${DIGITS} digitls prime is: ${i}`);
    break;
  }
}

console.timeEnd("label2");



function isPrime(n){
    if (n < 2) return false;
    var q = Math.floor(Math.sqrt(n));
    for (var i = 2; i <= q; i++){
        if (n % i == 0){return false;}
    }
    return true;
}
