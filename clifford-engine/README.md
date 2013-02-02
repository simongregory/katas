# The Clifford Engine

Via [@anthonygreen](http://github.com/anthonygreen/clifford-engine/)

The Clifford Engine does one job but it does it well: it looks after a stack of numbers.

You can interact with the Engine by giving it a list of numbers. This represents a program in Clifford Code, described below. The Engine will execute the code and output the number at the top of the stack when the program terminates.

Clifford code is made up of a list of whitespace-separated numbers that are processed in sequence. Each instruction is made up of one or more digits, depending on the type of instruction. The first digit always specifies the type of instruction.

As of January 2012 the Clifford Engine supports the following instructions:

0 "Push" (takes 1 argument)
Pushes its argument onto the Clifford stack.

1 "Pop" (takes no arguments)
Discards the number at the top of the Clifford stack.

2 "Add" (takes no arguments)
Removes the top two numbers from the stack, adds them and then pushes the total back onto the stack.

3 "Subtract" (takes no arguments)
Removes the top two numbers from the stack, subtracts them and then pushes the total back onto the stack.

4 "Multiply" (takes no arguments)
Removes the top two numbers from the stack, multiplies them and then pushes the total back onto the stack.

5 "Divide" (takes no arguments)
Removes the top two numbers from the stack, divies them and then pushes the result back onto the stack.

Consider the following examples:
0 2 0 2 2 yields the result 4
0 5 0 3 3 yields the result 2
0 10 0 10 4 yields the result 100
0 10 0 5 5 yields the result 2

Write a simulation of the Clifford Engine.
Your solution should be efficient and easy to extend.
Dr. Clifford is interested in exploring conditional branching instructions later in the year.

You can pick any programming language - we are looking for a solution that is clear, idiomatic, and interesting.

How can you be sure that your Clifford Engine is working as expected?

If you execute the following Clifford Code, what is the result you get expressed in hex?
   0 60 0 10 3 0 180 0 3 5 4 0 4 2