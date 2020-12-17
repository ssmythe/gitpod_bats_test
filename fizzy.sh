#!/usr/bin/env bash

source lib/fizzbuzz.sh

for i in $(seq 1 100); do
    echo $(do_fizzbuzz ${i})
done
