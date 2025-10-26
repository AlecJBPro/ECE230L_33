# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

## Lab Summary
In this lab, we used multiplexers and demultiplexers for signal routing. We learned how to implement MUXes and DEMUXes on Verilog. First, we implemented a 4-input mulitplexer that chooses from four inputs that are 4 bits, depending on the selector bits and enable. Then we implemented a demultiplexer that takes a 4-bit input and routes it to one of the four outputs depending on the selector and enable. Then we combined both modules in top.v to form a complete system. To implement the MUXes and DEMUXes, we used chained ternary statements, concatenation and logic expressions, so we also learned about them. 

### In plain English describe the function and use of a multiplexer.
A multiplexer is like a switch that selects one input from multiple input signals by using selector bits and then sends it to a single output. Multiplexers are useful in situations where you have multiple sources of information and you only want to use one of them at a time.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer is the opposite of a multiplexer. It takes a single input and sends it to one of multiple output lines according to the selector. Demultiplexers are useful when a single information has to be sent to different destinations.

### What other uses might these circuits have? (Think Shannon’s)
According to Shannon's Expansion Theorem, any boolean function can be written by implementing multiplexers and demultiplexers. They can also be used for data routing, memory addressing and etc. 

