#!/usr/bin/env python
"""
Modules
"""

def sumation(number_one, number_two):
    """Creates a sum function"""
    number_one_int = convert_integer(number_one)
    number_two_int = convert_integer(number_two)

    result = number_one_int + number_two_int

    return result

def convert_integer(number_str):
    """Converts str to int"""
    converted_integer = int(number_str)

    return converted_integer

