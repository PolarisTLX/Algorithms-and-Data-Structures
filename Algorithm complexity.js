Complexity considers how the algorithm scales with a change in input size.


LINEAR COMPLEXITY GROWTH:
In a simple for loop, where we run from i = 0 to i = array.length,
the number of iterations is one-to-one  with the number of elements.

With linear growth, the algorithm is just a little slower than the addition algorithm.




COMPARING ALGORITHMS:
Algorithms are only comparable if they share a common input and output.
So  add(x, y) and  running_sum(array)  are not comparable.


Increasing complexity with Nested Loops, is called "polynomial" growth, instead of linear.
Each for loop within is a linear algorithm,

In an example with 3 nested for-loops,
each one processes  f, t, and p elements respectively,
such that ftp elements are processes by the end of the entire algorithm,
So this algorithm can be called cubic for processing 3 linear elements.

Nested for-loops are thus a sign of slower code (though of course not always the case).
