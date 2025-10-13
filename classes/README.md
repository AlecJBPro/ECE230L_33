# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
  They utilize the same logic gates for both except the subtractor has an added invertor. The sum from half adder and the difference from the subtraction is identicle, but the difference between carry and borrow is on flipped bit.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It made it hard to implement because we had to account for a second round of addition to bring around the overflow and if it causes it to be 1+1 again at the LSB then it keeps going down the line, so we must account for the worst case.
### 3 - What is the edge case and problem with Two’s Complement number representation?
The same thing as one's complement as when we put in the 1 at the LSB for the conversion than we have to have a adder for each SB, so the worst case is 8 adders for each bit.
