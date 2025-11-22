# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
### Summary:
In this lab, we explored finite state machine. We implemented the same state machine using both One Hot and Binary encoding, which helped us to understand the difference between them better. We also mapped the state bits and outputs to switches, buttons, and LED's and observed how the machine behaved on hardware.

### Compare and contrast One Hot and Binary encodings
One Hot encoding simplifies logic as it uses one flip-flop per state, while binary encoding uses less flip-flops but requires more complex combinational logic. 

### Which method did your team find easier, and why?
Our team found One Hot easier because it required less complex combinational logic and determining the state behavior was more intuitive.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One Hot is better to use when the FPGA has plenty of flip-flops and the speed is important. Binary encoding is better when you want to reduce the number of flip-flops used and use a cheaper logical combination.

