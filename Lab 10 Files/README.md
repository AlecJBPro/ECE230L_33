# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

We can't use structural verilog due to the capabilities that it has when it comes to level-sensitive triggering. That is where Behavioral Verilog comes in where it has the proper capabilities when it comes to timing and behaviors.

### What is the meaning of always @(*) in a sensitivity block?

The always block is for combinational logic and makes it so that the code within will trigger when any of the logic that is being passed changes, for examples it is passing * as the params, which infers to any/all variables in the block that undergoes changes.

### What importance is memory to digital circuits?

Memory in digital circuits is imporant because saving states help build more complex applications depending on whats needed. Some instances that saving memory is essential is for data storage/structures that rely on holding information and retrieving it later down, which can't be done with only combinational logic.