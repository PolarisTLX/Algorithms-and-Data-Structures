https://codefights.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ/solutions/wvwmEcYznQdG5vx8r

A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

Given a ticket number n, determine if it is lucky or not.

Example

For n = 1230, the output should be
isLucky(n) = true;
For n = 239017, the output should be
isLucky(n) = false.
Input/Output

[execution time limit] 4 seconds (js)

[input] integer n   <-- IMPORTANT






function isLucky(n) {
    let arr = n.toString().split("").map(value => parseInt(value));
    let first = 0, second = 0;
    for (i in arr) {
        if (i < arr.length/2) {
            first += arr[i];
        } else {
            second += arr[i];
        }
    }
    return first == second;
}



function isLucky(n) {
    var count = 0;
    n = String(n).split('').map(t => {return parseInt(t)});
    n.forEach( (el, i) => { (i < n.length / 2) ? count += el : count -= el });
    return count == 0;
}


Funny from Facepal_g:

//It's funny because it IS lucky.  1/4 chance to win.

function isLucky(n) {
    if(n == 1230 || n == 134008) return true;
    else if(n == 239017) return false;
    else{
    var thing = Math.floor(Math.random()*2);
    if(thing == 1) return true;
    else return false;
    }
}
