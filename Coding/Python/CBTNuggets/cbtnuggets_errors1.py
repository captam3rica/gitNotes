#!/usr/bin/env python

"""
Error handling
-Try block and Except statement
-else clause has to be after the except clause
-finally clause
"""

while True:
    try:
        print "Let us solve the equation (x/2) / (x-y) "
        CONTINUE = raw_input("Please enter \"q\" to quit: ")

        if CONTINUE == "q":
            break

        X = float(raw_input("Please enter a value for x: "))
        Y = float(raw_input("Please enter a value for y: "))

        Z = (X/2) / (X-Y)

    except ZeroDivisionError as detail:
        print "There was an error in the code"
        print "You input a value that caused a division by zero"
    except ValueError as detail:
        print "There was an error in the code"
        print "You input a text value where a number value was expected"
    except SystemError as detail:
        print "There was an error in the code"
        print "Error Message:", detail
    else:
        print "Solving (x/2) / (x-y) for value x=", \
                X, "and y=", Y, "we get the result", Z
    finally:
        # cleanup code can go here
        # closing files excetera
        print "Cleanup code will go here!!!!! :)"



