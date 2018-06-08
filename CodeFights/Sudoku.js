function sudoku2(grid) {
    //     no duplicates in  row
    //     no duplicates in a column
    //     no duplicates in each 3x3 sub-grid
    //     no number outside of 1-9

    let solution = true;
    let hashCheck = {};

    // check the rows

    for (let i = 0; i < grid.length; i++) {
        hashCheck = {};
        for (let j = 0; j < grid.length; j++) {
           // if value does not yet exist
           if (grid[i][j] != '.') {
               if (!hashCheck[grid[i][j]]) {
                   hashCheck[grid[i][j]] = 0;
               }
               hashCheck[grid[i][j]]++;
               if (hashCheck[grid[i][j]] > 1) {
                   return solution = false;
               }

               // check once through whole grid for invalid value
               if (grid[i][j] < 1 || grid[i][j] > 9) {
                   return solution = false;
               }
            }
        }
    }

    console.log(solution);

    // check the columns

    // each column
    for (let k = 0; k < grid.length; k++) {
        hashCheck = {};
        // each row
        for (let l = 0; l < grid.length; l++) {
          if (grid[l][k] != '.') {
               // if value does not yet exist
               if (!hashCheck[grid[l][k]]) {
                   hashCheck[grid[l][k]] = 0;
               }
               hashCheck[grid[l][k]]++;
               if (hashCheck[grid[l][k]] > 1) {
                   return solution = false;
               }
           }
        }
    }

    console.log(solution);

    // each 3x3 grid:
    // 0-2, 3-5, 6-8

    hashCheck = {}
    for (let m = 0; m < 3; m++) {
        for (let o = 0; o < 3; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 0; m < 3; m++) {
        for (let o = 3; o < 6; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 0; m < 3; m++) {
        for (let o = 6; o < 9; o++) {
            if (grid[m][o] != '.') {
                if ( !hashCheck[grid[m][o]] ) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if ( hashCheck[grid[m][o]] > 1 ) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 3; m < 6; m++) {
        for (let o = 0; o < 3; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 3; m < 6; m++) {
        for (let o = 3; o < 6; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 3; m < 6; m++) {
        for (let o = 6; o < 9; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 6; m < 9; m++) {
        for (let o = 0; o < 3; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 6; m < 9; m++) {
        for (let o = 3; o < 6; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }

    }

    console.log(solution);

    hashCheck = {}
    for (let m = 6; m < 9; m++) {
        for (let o = 6; o < 9; o++) {
            if (grid[m][o] != '.') {
                if (!hashCheck[grid[m][o]]) {
                    hashCheck[grid[m][o]] = 0;
                }
                hashCheck[grid[m][o]]++;
                if (hashCheck[grid[m][o]] > 1) {
                   return solution = false;
                }
            }
        }
    }

    console.log(solution);

    return solution;
}
