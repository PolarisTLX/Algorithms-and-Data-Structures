//Turn columns into rows
var transpose = grid =>
    grid[0].map(
        (_,c) => grid.map(
            row => row[c]
        )
    )

//Turn sub-grids into rows
var expandSubGrids = grid => {
    var three = Math.sqrt(grid.length);
    return grid[0].map(
        (_,i) => grid[0].map(
            (_,j) => grid[(i/three|0)*three+j/three|0][i%three*three+j%three]
        )
    )
}

//Check a given row for duplicates
var checkRow = row => {
    var count = [];
    for(var cell of row) {
        if(cell != '.') {
            if(count[cell])
                return false;
            count[cell] = 1;
        }
    }
    return true;
}

var sudoku2 = grid =>
    grid.every(checkRow) &&
    transpose(grid).every(checkRow) &&
    expandSubGrids(grid).every(checkRow)
