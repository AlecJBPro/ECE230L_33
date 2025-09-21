# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we implemented a naive equation to describe a truth table. Then we turned the truth table to Karnaugh map, and grouped the 1's and 0's to implement the SOP and POS equations. Finally, we tested our equations using a testbench and saw that all of them gave the same and correct outputs.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
In KMaps; on the left-to-right edges and bottom-to-top edges, only one variable changes and that's why they are logically adjacent. Therefore, we can group them to make simpler terms.

### Why are the names Sum of Products and Products of Sums?
 AND operation is like multipliction so AND terms are called product terms and the OR operation is like addition so OR terms are called sum terms. Sum of Products is named that way because in the final eqaution several AND terms are connected by OR operations. In Products of Sum, OR terms are connected by AND operators so it's product of mutliple OR terms. 

### Open the test.v file – how are we able to check that the signals match using XOR?
We use XOR to check that signals match because if two outputs are same XOR gives 0 and if the outputs are diferent it gives 1. By using this we can check if maxterm.v, minterm.v and naive.v give the same output.

