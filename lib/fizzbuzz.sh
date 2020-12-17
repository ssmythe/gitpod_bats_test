#!/usr/bin/env bash
  
function do_fizzbuzz() {
    number=$1

    results=""
    if [[ $(( $number % 3 )) == 0 || ${number} == *"3"* ]]; then
        results="${results}Fizz"
    fi
    if [[ $(( $number % 5 )) == 0 || ${number} == *"5"* ]]; then
        results="${results}Buzz"
    fi
    [[ -n "${results}" ]] && echo ${results} || echo ${number}
}