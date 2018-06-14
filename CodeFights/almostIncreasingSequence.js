https://codefights.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

Example

For sequence = [1, 3, 2, 1], the output should be
almostIncreasingSequence(sequence) = false;

There is no one element in this array that can be removed in order to get a strictly increasing sequence.

For sequence = [1, 3, 2], the output should be
almostIncreasingSequence(sequence) = true.

You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

Input/Output

[execution time limit] 4 seconds (js)


Solution 1:  Works but last test takes too long.


function almostIncreasingSequence(sequence) {
    let temp = [];
    let outofplace = 0;

    for (let i=0; i<sequence.length; i++) {
        temp = [];

        for (let j=0; j<sequence.length; j++) {

            if (j == i) {
                continue;
            }
            temp.push(sequence[j]);
        }

        outofplace = 0;

        for (let k=0; k< temp.length-1; k++) {
            if (temp[k+1] <= temp[k]) {
                outofplace++;
            }
        }

        if (outofplace == 0 ){
           return true;
        }

    }
    return false;
}
