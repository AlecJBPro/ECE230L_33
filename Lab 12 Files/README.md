# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

Because each flip flop divides the clock by 2, and the count goes through the states, thats why it is 2 * counts.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

This is because you can't start on an unknown state, where that may cause problems and conflicts, so the simple solution is to start in a known state, which is all 1s.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

The width of the ring counter you need for a 1KHz output would have a width of 10,000.