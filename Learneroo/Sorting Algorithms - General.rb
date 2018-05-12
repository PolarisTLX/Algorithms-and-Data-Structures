100DaysOfCode -D322- Computer Science:

Great Explanation of Merge Sort (and comparison to others) by CS50:
https://www.youtube.com/watch?v=EeQ8pwjQxTM

https://www.learneroo.com/modules/101/nodes/500

Comparing which sorting algorithms are more efficient/require less operations.  Such Merge Sort, Quick Sort, Bubble Sort, Insertion Sort, Selection Sort, Counting Sort. And there is no single algorithm that is fastest in all cases.

Observing sorting efficiency:
In terms of numbert of operations, Merge Sort runs at O(n log n), which in the general is the best that can be achieved.
While Bubble Sort, Insertion Sort and Selection Sort run at O(n^2).
But there can be scenarios where the others are faster depending on the data.
Quick Sort is the standard.
Such as a simple "counting sorting" is much faster, (as well as easier to visualise and code), than an "insertion sort".


Like QuickSort, MergeSort runs quickly in O(n log n) time. While MergeSort uses more space and is not usually as fast (in practice) as Quicksort, Mergesort has the benefit of being stable, which means it keeps duplicate elements in the original order that they started with. This is meaningless if the values being sorted is all there is, but usually there's associated data with each element which sometimes needs to be preserved in the original order. For example, if you sort by one value of an item, and then by another value, you may not want the second sort to mess up the order of the first sort.


Great Explanation of Big O Notation:

https://stackoverflow.com/questions/2307283/what-does-olog-n-mean-exactly

Here are the running times of some operations we might perform on the phone book, from best to worst:

O(1) (best case): Given the page that a business's name is on and the business name, find the phone number.

O(1) (average case): Given the page that a person's name is on and their name, find the phone number.

O(log n): Given a person's name, find the phone number by picking a random point about halfway through the part of the book you haven't searched yet, then checking to see whether the person's name is at that point. Then repeat the process about halfway through the part of the book where the person's name lies. (This is a binary search for a person's name.)

O(n): Find all people whose phone numbers contain the digit "5".

O(n): Given a phone number, find the person or business with that number.

O(n log n): There was a mix-up at the printer's office, and our phone book had all its pages inserted in a random order. Fix the ordering so that it's correct by looking at the first name on each page and then putting that page in the appropriate spot in a new, empty phone book.
