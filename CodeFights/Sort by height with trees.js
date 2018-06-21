Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees.

Example

For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

Input/Output

[execution time limit] 4 seconds (js)

[input] array.integer a




function sortByHeight(a) {
    let trees = [], removed_count = 0;
    while (a.indexOf(-1) > -1) {
        trees.push(a.indexOf(-1) + removed_count);
        a.splice(a.indexOf(-1), 1);
        removed_count++;
    }
    a.sort((a, b) => a - b);

    for (i in trees) {
        a.splice(trees[i], 0 , -1);
    }
    return a;
}




Slighty slicker solution:

function sortByHeight(a) {
    var s = a.filter(h => h > 0).sort((a, b) => a - b);
    return a.map(p => {
        if (p !== -1) {
            return s.shift();
        }
        return -1;
    });
}
