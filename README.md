Auriel Wish (awish01) and Dalia Wadsworth (dwadsw02)

Acknowledgements: we got help from TAs

To our knowledge, everything has been correctly implemented

Departures from recommended calling convention:
        r3 is not just nonvolatile - it always points to the value stack

Aside from 2 special cases, the print module treats every number as positive,
using recursion to continuously divide the inputted number by 10 and output that
number mod 10 (due to recursion, the output goes from the most significant
to the least significant digit)

The RPN value stack is represented as a stack with set aside space and a
register keeping track of the top of the stack (the same implementation as the
call stack)

File: printd.ums
Sections:
        text: contains functions to print UM words in decimal

File: callmain.ums
Sections:
        init: calls the function callmain which will call the the main 
                function within the module, calc40

File: urt0.ums
Sections:
        init: creates a call stack of 100000 elements
        data: makes register 0 a zero register


File: calc40.ums
Sections:
        init: initializes the jumptable
        data: creates a value stack of 100,000 elements
        rodata: sets space for jumptable entries used to hold
                function/command calls
        text: contains the implementations of the opeartions
                of the RPN calculator (the function definitions) 


Time spent:
        Analyzing the assigment: 1 hour
        Writing assembly code: 10 hours
        Debugging the calculator: 3 hours