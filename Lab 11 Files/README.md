# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
In this lab, we learned how edge and level sensitive circuits differ. We created D, JK, and T flip-flops and understood how they behaved better. We also learned that declaring an initial state ensures stable startup behavior. Overall, this lab gave us a better understanding of flip-flops. 

### What is different between edge and level sensitive circuits?
Level sensitive circuits change their output continuosuly when the enable signal is active. However, edge sensitive circuits change their output only at the moment of transition of the clock signal. 

### Why is it important to declare initial state?
It's important to declare the initial state to prevent unpredictable startup behavior. Without initialization, the elements can start in an unknown state. Initializing helps to ensure the circuit to begin from a stable and known value. 

### What do edge sensitive circuits let us build?
Edge sensitive circuits help us build synchronous digital systems. They make it possible to design counters, registers, state machines, etc. 

