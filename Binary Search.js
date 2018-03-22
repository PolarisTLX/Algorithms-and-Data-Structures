Example:

array = [0,1,2,3,5,8,13,21,34,55,89,101,144,233]

If we are looking for "144".

Traditional search, starting from the front,
WOULD REQUIRE 13 STEPS.


Binary method:

1- start at middle, 21, is 144 greater or less than?
greater, so remove/ignore first half,

array = [34,55,89,101,144,233]


2. middle again, 89, is 144 greater or lesser?
greater, so remove/ignore first half again,

array = [101,144,233]

3. in the middle we find out 144.

3 STEPS  VS 13 STEPS.



BINARY SEARCH FUNTCION:

binarySearch(key, array[], min, max)

key = 144
array = [0,1,2,3,5,8,13,21,34,55,89,101,144,233]
min = 0
max = 233

min and max get updated as we narrow down the array.

step 1:

midpoint = findMidPoint(min, max)

if (max < min):
// first check if the number exists in the array, if not return -1
// if the mex is ever < min, that means we've gone too far,
// since the number wasnt in the input array we return -1, to indicate nothing was found
  return -1
else:
    if (array[midpoint] < key):
    // if the midpoint is less that key, then key is larger than all numbers left of that position
        binarySearch(key, array, midpoint + 1, max)
    else if (array[midpoint] > key):
    // if the midpoint is greater that key, then key is smaller than all numbers right of that position
        binarySearch(key, array, min, midpoint - 1)
    else:
    // if it is neither greater or smaller than the midpoint, then it must be the midpoint itself.
        return midpoint





NOTE:  Must be sorted for this to work!!!

A way to keep a list sorted,
while simultaenously allowing one to add or remove numbers from this list,
is by usuing a BINARY SEARCH TREE.

It is a data structure with 3 properties:
1. The left subtree of a node only contains values that are less than or equal to the nodes value.
2. The right subtree of a node only contains values that are gretaer than or equal to the nodes value.
3. Both the left and right subtrees of a node are also binary search trees.


For visuals, computer science trees grow downward. The are inverted, roots at top, leaves on the bottom extremities



TO ADD NUMBERS TO A BINARY TREE:

We have to make sure we follow 3 binary search tree properties,
and insert the value where there is space.


DELETING A NODE IS MORE INVOLVED:  at 9 minutes into video

3 cases:
-Easiest scenario: if the number to delete is a leaf node, can simply delete
-If the node has only 1 child:  We delete the item, then take its child node and attach to its parent node just above.
-Most complex scenario: deleting a node with 2 children. (see picture example in the folder for Number 13)
        First we find the next larger value, 21, and swap the two nodes (all connections from 13 go to 21),
        13 becomes a leaf node, and can now be deleted.


Dont want to make a binary search tree from a sorted list of numbers.
This would not be better than linear search.

randomly shuffling the input items can solve this?

Or use other data structures instead.
