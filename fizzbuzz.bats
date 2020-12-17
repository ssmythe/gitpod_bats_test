#!/usr/bin/env bats

source lib/fizzbuzz.sh

@test "1 = 1" {
    run do_fizzbuzz 1
    [[ "${output}" = "1" ]]
}

@test "2 = 2" {
    run do_fizzbuzz 2
    [[ "${output}" = "2" ]]
}

@test "3 = Fizz" {
    run do_fizzbuzz 3
    [[ "${output}" = "Fizz" ]]
}

@test "5 = Buzz" {
    run do_fizzbuzz 5
    [[ "${output}" = "Buzz" ]]
}

@test "15 = FizzBuzz" {
    run do_fizzbuzz 15
    [[ "${output}" = "FizzBuzz" ]]
}

# Stage 2 - new requirements

# A number is fizz if it is divisible by 3 or if it has a 3 in it
@test "3 in number = Fizz" {
    run do_fizzbuzz 13
    [[ "${output}" = "Fizz" ]]
}

# A number is buzz if it is divisible by 5 or if it has a 5 in it
@test "5 in number = Buzz" {
    run do_fizzbuzz 59
    [[ "${output}" = "Buzz" ]]
}
