# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
Summary:
In this lab, we applied combinational logic to real-life problems such as wiring stairway lights. We used an XOR gate to produce the sum and an AND gate to produce the carry. We first built the one-bit adder, then expanded it to a full adder to add multi-bit numbers by chaining the adders. To summarize, in this lab, we learned how simple logic gates can be combined to perform arithmetic.

### 1 - How might you add more than two bits together?
The Ripple-carry adder structure helps to add more than two bits together. It is a structure that chains multiple full adders together. The carry out from each adder becomes the carry in for the other.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate helps to generate the sum bit. An XOR gate outputs 1 only if the inputs are different from each other. It helps to distuingish if the inputs are the same or not.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
It can handle 2 numbers up to 11 in binary and 3 in decimal, so the largest possible sum is 3 + 3 = 6. When the sum exceeds, an overflow happens, and the extra bit is pushed to carry out. 
