#!/usr/bin/env ruby

def fizzbuzz n
  case [n % 3 == 0, n % 5 == 0]
  when [true, true]
    return "fizzbuzz"
  when [true, false]
    return "fizz"
  when [false, true]
    return "buzz"
  else
    return n
  end
end

(1..100).map { |n| puts fizzbuzz(n) }
