https://codefights.com/interview-practice/task/5A8jwLGcEpTPyyjTB/solutions/3fNiJAPukgJ3qSW8D


a = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]];

function rotateImage(a) {
    let rotated = [];
    for (let i = 0; i < a.length; i++) {
      rotated.push([]);
    }

    for (let j = 0; j < a.length; j++) {
        for (let k = 0; k < a[0].length; k++) {
            rotated[j].push(a[a.length-1-k][j]);
        }
    }

    return rotated;
}
console.log(rotateImage(a));

// Another solution with XOR swap:

function rotateImage(a) {
    // Transpose
    for(var i = 0;i<a.length;i++){
        for(var j = 0;j<i;j++){
            // Switch a[i][j] and a[j][i]
            // With XOR swap
            a[i][j] ^= a[j][i]
            a[j][i] ^= a[i][j]
            a[i][j] ^= a[j][i]
         }
    }

    // Reverse columns
    for(var i in a){
        a[i] = a[i].reverse()
    }

    return a
}



//   One line-er:

rotateImage = a => a.map((row, rowIndex) => a.map(val => val[rowIndex]).reverse())
