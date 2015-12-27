#!/usr/bin/env node

module.exports = {

  len: function(number) {
    return (number + "".length);
  },

  toArray: function(number) {
    function splitNumber(n,list) {
      if (list === undefined) {
        list = [];
      }
      if (n < 10) {
        list.unshift(n);
        return list;
      } else {
        list.unshift(Math.floor(n%10));
        return splitNumber(Math.floor(n/10),list);
      }
    }
    return splitNumber(number);
  },

  pandigital: function(number) {
    return (this.toArray(number).sort().join("") === "0123456789");
  },

  factorial: function(number) {
    function factorialIter(product,counter,max) {
      if (counter > max) {
        return product;
      } else {
        return factorialIter((product*counter),(counter+1),max);
      }
    }
    return factorialIter(1,1,number);
  },

  sumDigits: function(number) {
    function sumList(list,index,sum) {
      if (index >= list.length) {
        return sum;
      } else {
        return sumList(list,index+1,sum+list[index]);
      }
    }
    return sumList(this.toArray(number),0,0);
  },

  findDivisors: function(number) {
    var i;
    var j;
    var divisors = [1];
    number % 2 === 0 ? (i = 2, j = 1) : (i = 3, j = 2);
    for (i; i <= Math.floor(number/2); i += j) {
      if (number % i === 0) { divisors.push(i) };
    }
    divisors.push(number);
    return divisors;
  },

  sumDivisors: function(number) {
    function sumList(list,index,sum) {
      if (index >= list.length) {
        return sum;
      } else {
        return sumList(list,index+1,sum+list[index]);
      }
    }
    return sumList(this.findDivisors(number),0,0);
  },

  prime: function(number) {
    return this.findDivisors(number).length === 2 ? true : false;
  },

  composite: function(number) {
    return !this.prime(number)
  },

  abundant: function(number) {
    return number < this.sumDivisors(number);
  },

  perfect: function(number) {
    return number === this.sumDivisors(number);
  },

  deficient: function(number) {
    return self > this.sumDivisors(number);
  },

  triangular: function(number) {
    return (Math.sqrt((8 * number) + 1)) % 1 === 0;
  },

  square: function(number) {
    return (Math.sqrt(number)) % 1 === 0;
  },

  pentagonal: function(number) {
    return ((Math.sqrt((24 * number) + 1) + 1) / 6) % 1 === 0;
  },

  hexagonal: function(number) {
    return ((Math.sqrt((8 * number) + 1) + 1) / 4) % 1 === 0;
  },

  heptagonal: function(number) {
    return (((Math.sqrt((40 * number) + 9)) + 3) / 10) % 1 === 0;
  },

  octagonal: function(number) {
    return (((Math.sqrt((3 * number) + 1)) + 1) / 3) % 1 === 0;
  },

  figurate: function(number) {
    return (this.triangular(number) || this.square(number) ||
      this.pentagonal(number) || this.hexagonal(number) ||
      this.heptagonal(number) || this.octagonal(number));
  },

  increasing: function(number) {
    var digits = this.toArray(number);
    for (var i = 1; i < digits.length; i++) {
      if (digits[i] < digits[i-1]) {
        return false;
      }
    }
    return true;
  },

  decreasing: function(number) {
    var digits = this.toArray(number);
    for (var i = 1; i < digits.length; i++) {
      if (digits[i] > digits[i-1]) {
        return false;
      }
    }
    return true;
  },

  bouncy: function(number) {
    return (!this.increasing(number) && !this.decreasing(number));
  },

  reverse: function(number) {
    return +this.toArray(number).reverse().join("")
  },

  palindrome: function(number) {
    return number === this.reverse(number);
  },

}