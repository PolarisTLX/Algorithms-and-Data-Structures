function sudoku2(grid) {
    //     no duplicates in  row
    //     no duplicates in a column
    //     no duplicates in each 3x3 sub-grid
    //     no number outside of 1-9

    let hashCheck = {};

    // check the rows
    for (let i = 0; i < grid.length; i++) {
        hashCheck = {};
        for (let j = 0; j < grid.length; j++) {
           if (grid[i][j] != '.') {
               // if value does not yet exist
               if (!hashCheck[grid[i][j]]) {
                   hashCheck[grid[i][j]] = 0;
               }
               hashCheck[grid[i][j]]++;
               if (hashCheck[grid[i][j]] > 1) {
                   return false;
               }

               // check once through whole grid for invalid value
               if (grid[i][j] < 1 || grid[i][j] > 9) {
                   return false;
               }
            }
        }
    }

    // check the columns
    for (let k = 0; k < grid.length; k++) {
        hashCheck = {};
        for (let l = 0; l < grid.length; l++) {
          if (grid[l][k] != '.') {
               // if value does not yet exist
               if (!hashCheck[grid[l][k]]) {
                   hashCheck[grid[l][k]] = 0;
               }
               hashCheck[grid[l][k]]++;
               if (hashCheck[grid[l][k]] > 1) {
                   return false;
               }
           }
        }
    }

    // each 3x3 grid:
    for (let x = 0; x < 9; x+=3) {
        for (let y = 0; y < 9; y+=3) {
            hashCheck = {}
            for (let m = x; m < x+3; m++) {
                for (let o = y; o < y+3; o++) {
                    if (grid[m][o] != '.') {
                        if (!hashCheck[grid[m][o]]) {
                            hashCheck[grid[m][o]] = 0;
                        }
                        hashCheck[grid[m][o]]++;
                        if (hashCheck[grid[m][o]] > 1) {
                           return false;
                        }
                    }
                }

            }
        }
    }

    return true;
}
