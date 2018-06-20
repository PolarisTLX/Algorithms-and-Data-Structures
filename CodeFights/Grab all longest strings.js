https://codefights.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL/solutions

Given an array of strings, return another array containing all of its longest strings.

Example

For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
allLongestStrings(inputArray) = ["aba", "vcd", "aba"].




function allLongestStrings(inputArray) {
    let maxLength = 0;
    let allLongest = [];
    for(i in inputArray) {
        len = inputArray[i].length;
        if (len > maxLength) {
            maxLength = len;
            allLongest = [inputArray[i]];
        } else if (len == maxLength) {
            allLongest.push(inputArray[i]);
        }
    }

    return allLongest;
}



function allLongestStrings(inputArray) {
    'use strict';
    let maxSize = Math.max(...inputArray.map(x => x.length));
    return inputArray.filter(x => x.length === maxSize);
}
