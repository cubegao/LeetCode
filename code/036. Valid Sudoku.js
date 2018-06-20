/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku = function(board) {

    var row = [];
    var column = [];
    var square = [];


    for (var i = 0; i < 9; i++) {

        column = [];
        row = [];
        square = [];
        for (var j = 0; j < 9; j++) {

            //列
            var tempcolumn = board[i][j];
            if (tempcolumn !== '.') {
                if (column.indexOf(tempcolumn) !== -1) {
                    return false;
                }else {
                    column.push(tempcolumn);
                }
            }

            //行
            var temprow = board[j][i];
            if (temprow !== '.') {
                if (row.indexOf(temprow) !== -1) {
                    return false;
                }else {
                    row.push(temprow);
                }
            }

            //块
            var tempsquare = board[Math.floor(i/3)*3+Math.floor(j/3)][i%3*3+j%3];
            if (tempsquare !== '.') {
                if (square.indexOf(tempsquare) !== -1) {
                    return false;
                }else {
                    square.push(tempsquare);
                }
            }
        }
    }

    return true;
};


isValidSudoku([["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]);
