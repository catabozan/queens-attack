#include <iostream>

using namespace std;

struct tile {
    bool enemy = false;
    bool queenRange = false;
    bool queen = false;
};

int main() {

    int row, col, qRow, qCol, enemies, eCol, eRow, moves = 0;

    cout << "enter row number: ";
    cin >> row;
    cout << "enter col number: ";
    cin >> col;

    tile board[row][col];

    cout << "enter queen's position(row): ";
    cin >> qRow;
    cout << "enter queen's position(col): ";
    cin >> qCol;

    board[qRow][qCol].queen = true;

    cout << "number of enemies: ";
    cin >> enemies;
    while (enemies > 0) {
        cout << "enter enemy position(row): ";
        cin >> eRow;
        cout << "enter enemy position(col): ";
        cin >> eCol;
        cout << "-----------------------------" << endl;

        board[eRow][eCol].enemy = true;
        enemies--;
    }

    //check horizontal line
    for (int iCol = qCol; iCol < col; iCol++) {
        if (!board[qRow][iCol].enemy) {
            if (!board[qRow][iCol].queen) {
                moves++;
                board[qRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }
    for (int iCol = qCol; iCol >= 0; iCol--) {
        if (!board[qRow][iCol].enemy) {
            if (!board[qRow][iCol].queen) {
                moves++;
                board[qRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }

    //check vertical line
    for (int iRow = qRow; iRow < row; iRow++) {
        if (!board[iRow][qCol].enemy) {
            if (!board[iRow][qCol].queen) {
                moves++;
                board[iRow][qCol].queenRange = true;
            }
        } else {
            break;
        }
    }
    for (int iRow = qRow; iRow >= 0; iRow--) {
        if (!board[iRow][qCol].enemy) {
            if (!board[iRow][qCol].queen) {
                moves++;
                board[iRow][qCol].queenRange = true;
            }
        } else {
            break;
        }
    }

    //check primary diagonal
    for (int iRow = qRow, iCol = qCol; iRow < row && iCol < col; iRow++, iCol++) {
        if (!board[iRow][iCol].enemy) {
            if (!board[iRow][iCol].queen) {
                moves++;
                board[iRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }
    for (int iRow = qRow, iCol = qCol; iRow >= 0 && iCol >= 0; iRow--, iCol--) {
        if (!board[iRow][iCol].enemy) {
            if (!board[iRow][iCol].queen) {
                moves++;
                board[iRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }

    //check secondary diagonal
    for (int iRow = qRow, iCol = qRow; iRow >= 0 && iCol < col; iRow--, iCol++) {
        if (!board[iRow][iCol].enemy) {
            if (!board[iRow][iCol].queen) {
                moves++;
                board[iRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }
    for (int iRow = qRow, iCol = qRow; iRow < row && iCol >= 0; iRow++, iCol--) {
        if (!board[iRow][iCol].enemy) {
            if (!board[iRow][iCol].queen) {
                moves++;
                board[iRow][iCol].queenRange = true;
            }
        } else {
            break;
        }
    }


    //board output
    for (int iRow = 0; iRow < row; iRow++) {
        for (int iCol = 0; iCol < col; iCol++) {
            if (board[iRow][iCol].enemy) {
                cout << "e ";
            } else if (board[iRow][iCol].queenRange) {
                cout << "* ";
            } else if (board[iRow][iCol].queen){
                cout<<"Q ";
            }else {
                cout << "\u25A0 ";
            }

        }
        cout << endl;
    }

    cout << "Possible moves: " << moves;

    return 0;
}